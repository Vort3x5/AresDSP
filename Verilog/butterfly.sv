`timescale 1ns/1ps
module butterfly (
    input  signed [15:0] xr, xi,      // x0: część rzeczywista i urojona
    input  signed [15:0] yr, yi,      // x1: część rzeczywista i urojona
    input  signed [15:0] wr, wi,      // współczynnik twiddle: część rzeczywista i urojona
    output signed [15:0] out0_r, out0_i, // wynik x0 + t
    output signed [15:0] out1_r, out1_i  // wynik x0 - t
);
    // Mnożenia pośrednie (32-bitowe)
    wire signed [31:0] mult0 = yr * wr;
    wire signed [31:0] mult1 = yi * wi;
    wire signed [31:0] mult2 = yr * wi;
    wire signed [31:0] mult3 = yi * wr;
    // Obliczenie t = y * W
    wire signed [15:0] t_real = (mult0 - mult1) >>> 15;
    wire signed [15:0] t_imag = (mult2 + mult3) >>> 15;
    // Wyniki motyla: x0 + t oraz x0 - t
    assign out0_r = xr + t_real;
    assign out0_i = xi + t_imag;
    assign out1_r = xr - t_real;
    assign out1_i = xi - t_imag;
endmodule

