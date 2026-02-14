(* ramstyle = "no_rw_check, M10K" *)
module ram_4096 (
    input clk,

    // Port A
    input             we_a,
    input  [11:0]     addr_a,
    input  signed [15:0] din_real_a, din_imag_a,
    output reg signed [15:0] dout_real_a, dout_imag_a,

    // Port B
    input             we_b,
    input  [11:0]     addr_b,
    input  signed [15:0] din_real_b, din_imag_b,
    output reg signed [15:0] dout_real_b, dout_imag_b
);
    // Wspólna pamięć 32-bitowa (łączymy real i imag w jednym słowie)
    reg signed [31:0] mem[0:4095];
    integer i;
    initial begin
        for (i = 0; i < 4096; i = i + 1) begin
            mem[i] = 32'sd0;
        end
    end

    always @(posedge clk) begin
        // Port A: zapis
        if (we_a) begin
            mem[addr_a] <= {din_real_a, din_imag_a};
        end
        // Port B: zapis
        if (we_b) begin
            mem[addr_b] <= {din_real_b, din_imag_b};
        end
        // Port A: odczyt (po zapisie lub bez)
        dout_real_a <= mem[addr_a][31:16];
        dout_imag_a <= mem[addr_a][15:0];
        // Port B: odczyt
        dout_real_b <= mem[addr_b][31:16];
        dout_imag_b <= mem[addr_b][15:0];
    end
endmodule
