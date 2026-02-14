module fft_4096 (
    input        clk,
    input        reset,
    input        start,
    output reg   done
);
    // Parametry FFT
    localparam N = 4096;
    localparam LOG2N = 12;

    // Sygnały pamięci RAM (port A i B)
    reg we_a, we_b;
    reg [LOG2N-1:0] addr_a, addr_b;
	 reg [LOG2N-1:0] addr_i1, addr_i2;
    reg signed [15:0] din_real_a, din_imag_a;
    wire signed [15:0] dout_real_a, dout_imag_a;
    reg signed [15:0] din_real_b, din_imag_b;
    wire signed [15:0] dout_real_b, dout_imag_b;

    // Sygnały ROM-ów
    reg [LOG2N-1:0] rom_addr;
    wire signed [15:0] in_real, in_imag; // wyjście ROM z danymi wejściowymi
    wire signed [15:0] tw_real, tw_imag; // wyjście ROM z współczynnikami twiddle
    reg [LOG2N-1:0] tw_addr;

    // Instancje pamięci: ROM (dane wejściowe), ROM (twiddle) oraz dwuportowy RAM
    rom_input   rom_inst(.addr(rom_addr), .data_real(in_real), .data_imag(in_imag));
    twiddle_rom tw_inst(.addr(tw_addr), .twiddle_real(tw_real), .twiddle_imag(tw_imag));
    ram_4096    ram_inst (
        .clk(clk),
        .we_a(we_a),
        .addr_a(addr_a),
        .din_real_a(din_real_a),
        .din_imag_a(din_imag_a),
        .dout_real_a(dout_real_a),
        .dout_imag_a(dout_imag_a),
        .we_b(we_b),
        .addr_b(addr_b),
        .din_real_b(din_real_b),
        .din_imag_b(din_imag_b),
        .dout_real_b(dout_real_b),
        .dout_imag_b(dout_imag_b)
    );

    // Stany FSM
    parameter IDLE=3'd0, LOAD=3'd1, FFT_READ=3'd2, FFT_WAIT=3'd3,
              FFT_CALC1=3'd4, FFT_CALC2=3'd5, FFT_WRITE=3'd6, DONE_STATE=3'd7;
    reg [2:0] state;
    reg [LOG2N-1:0] load_count;
    reg [3:0] stage;
    reg [LOG2N-1:0] group_count, k_count;

    // Rejestry dla obliczeń motyla (wyniki i tymczasowe)
    reg signed [15:0] bf_xr, bf_xi, bf_yr, bf_yi, bf_wr, bf_wi;
    wire signed [15:0] bf_out0_r, bf_out0_i, bf_out1_r, bf_out1_i;
    reg signed [15:0] out0_real, out0_imag, out1_real, out1_imag;

    // Sygnały pomocnicze (do adresowania i współczynnika twiddle)
    wire [LOG2N-1:0] half, m, base, step;
    assign half = 1 << stage;
    assign m = half << 1;
    assign base = group_count * m;
    assign step = N >> (stage+1);

    // Funkcja odwrotności bitów (bit-reversal) dla adresowania wejść
    function [LOG2N-1:0] bit_reverse12(input [LOG2N-1:0] in);
        integer i;
        begin
            for (i = 0; i < LOG2N; i = i + 1) begin
                bit_reverse12[LOG2N-1-i] = in[i];
            end
        end
    endfunction

    // Inicjalizacja
    initial begin
        state       = IDLE;
        done        = 1'b0;
        we_a        = 1'b0;
        we_b        = 1'b0;
        addr_a      = '0;
        addr_b      = '0;
        din_real_a  = '0;
        din_imag_a  = '0;
        din_real_b  = '0;
        din_imag_b  = '0;
        rom_addr    = '0;
        tw_addr     = '0;
        load_count  = '0;
        stage       = 0;
        group_count = '0;
        k_count     = '0;
    end

    // Sterowanie FSM
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset asynchroniczny
            state       <= IDLE;
            done        <= 1'b0;
            we_a        <= 1'b0;
            we_b        <= 1'b0;
            load_count  <= 0;
            stage       <= 0;
            group_count <= 0;
            k_count     <= 0;
            addr_a      <= 0;
            addr_b      <= 0;
            din_real_a  <= 0;
            din_imag_a  <= 0;
            din_real_b  <= 0;
            din_imag_b  <= 0;
            rom_addr    <= 0;
            tw_addr     <= 0;
        end else begin
            case (state)
                //----------------------------------
                IDLE: begin
                    done <= 1'b0;
                    if (start) begin
                        // Przygotuj ładowanie danych
                        load_count <= 0;
                        rom_addr   <= 0;
                        we_a       <= 1'b0;
                        we_b       <= 1'b0;
                        state      <= LOAD;
                    end
                end

                //----------------------------------
                LOAD: begin
                    // Ładuj dane wejściowe z ROM do RAM (z odwróceniem bitów adresu)
                    addr_a     <= bit_reverse12(load_count);
                    din_real_a <= in_real;
                    din_imag_a <= in_imag;
                    we_a       <= 1'b1;
                    rom_addr   <= load_count + 1;
                    if (load_count < N-1) begin
                        load_count <= load_count + 1;
                        state <= LOAD;
                    end else begin
                        // Ostatni zapis
                        we_a       <= 1'b0;
                        load_count <= load_count + 1;
                        stage       <= 0;
                        group_count <= 0;
                        k_count     <= 0;
                        state       <= FFT_READ;
                    end
                end

                //----------------------------------
                FFT_READ: begin
                    // Przygotuj odczyt dwóch elementów dla motyla
                    we_a   <= 1'b0;
                    we_b   <= 1'b0;
                    // Oblicz adresy elementów wewnątrz grupy
                    addr_i1 = base + k_count;
                    addr_i2 = base + half + k_count;
                    tw_addr <= k_count * step;
                    addr_a <= addr_i1;
                    addr_b <= addr_i2;
                    state  <= FFT_WAIT;
                end

                //----------------------------------
                FFT_WAIT: begin
                    // Czekaj cykl na dane z RAM
                    state <= FFT_CALC1;
                end

                //----------------------------------
                FFT_CALC1: begin
                    // Odczyt danych (przechowaj w rejestrach motyla)
                    bf_xr <= dout_real_a;
                    bf_xi <= dout_imag_a;
                    bf_yr <= dout_real_b;
                    bf_yi <= dout_imag_b;
                    bf_wr <= tw_real;
                    bf_wi <= tw_imag;
                    state <= FFT_CALC2;
                end

                //----------------------------------
                FFT_CALC2: begin
                    // Wykonaj motyla (z użyciem modułu butterfly)
                    out0_real <= bf_out0_r >>> 1;
                    out0_imag <= bf_out0_i >>> 1;
                    out1_real <= bf_out1_r >>> 1;
                    out1_imag <= bf_out1_i >>> 1;
                    state <= FFT_WRITE;
                end

                //----------------------------------
                FFT_WRITE: begin
                    // Zapisz wyniki motyla z powrotem do RAM
                    we_a      <= 1'b1;
                    we_b      <= 1'b1;
                    addr_a    <= addr_i1;
                    addr_b    <= addr_i2;
                    din_real_a <= out0_real;
                    din_imag_a <= out0_imag;
                    din_real_b <= out1_real;
                    din_imag_b <= out1_imag;
                    if (k_count < (half - 1)) begin
                        // Następny motyl w grupie
                        k_count <= k_count + 1;
                        state   <= FFT_READ;
                    end else begin
                        // Koniec grupy
                        k_count <= 0;
                        if (group_count < ((N >> (stage+1)) - 1)) begin
                            group_count <= group_count + 1;
                            state       <= FFT_READ;
                        end else begin
                            // Koniec etapu
                            group_count <= 0;
                            if (stage < (LOG2N - 1)) begin
                                stage <= stage + 1;
                                state <= FFT_READ;
                            end else begin
                                // Koniec FFT
                                we_a <= 1'b0;
                                we_b <= 1'b0;
                                done <= 1'b1;
                                state <= DONE_STATE;
                            end
                        end
                    end
                end

                //----------------------------------
                DONE_STATE: begin
                    // FFT zakończone
                    done <= 1'b1;
                end
            endcase
        end
    end

    // Instancja modułu butterfly
    butterfly bf_inst(
        .xr(bf_xr), .xi(bf_xi),
        .yr(bf_yr), .yi(bf_yi),
        .wr(bf_wr), .wi(bf_wi),
        .out0_r(bf_out0_r), .out0_i(bf_out0_i),
        .out1_r(bf_out1_r), .out1_i(bf_out1_i)
    );
endmodule
