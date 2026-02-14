`timescale 1ns/1ps
module fft_tb;
    reg clk;
    reg reset;
    reg start;
    wire done;

    reg signed [31:0] fft_val;
    reg signed [15:0] fft_real, fft_imag;
    integer i, outfile;

    // Instancja modułu FFT 4096
    fft_4096 fft_uut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .done(done)
    );

    // Generowanie zegara
    always #5 clk = ~clk;

    initial begin
        // Reset i start
        clk = 0;
        reset = 1;
        start = 0;
        #20;
        reset = 0;
        #10;
        start = 1;
        #10;
        start = 0;

        // Czekaj na sygnał done
        @(posedge done);
        $display("FFT computation completed. Reading results...");

        // Otwórz plik wynikowy
        outfile = $fopen("fft_output.txt", "w");
        if (!outfile) begin
            $display("Nie mogę otworzyć pliku wyjściowego!");
            $finish;
        end

        // Odczytaj kolejne próbki z pamięci RAM i zapisz do pliku
        for (i = 0; i < 4096; i = i + 1) begin
            fft_val  = fft_uut.ram_inst.mem[i];      // dostęp do wewnętrznej pamięci RAM
            fft_real = fft_val[31:16];
            fft_imag = fft_val[15:0];
            $fwrite(outfile, "%d %d\n", fft_real, fft_imag);
        end

        $fclose(outfile);
        $display("Results written to fft_output.txt");
        $finish;
    end
endmodule
