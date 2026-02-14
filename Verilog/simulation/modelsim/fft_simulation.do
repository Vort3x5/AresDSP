# FFT Simulation DO File - Full Signal Waveform View
restart -force
vlib work
vlog -sv fft_tb.sv
vsim -voptargs=+acc fft_tb

add wave -divider "Top-Level Signals"
add wave -dec /fft_tb/clk
add wave -dec /fft_tb/reset
add wave -dec /fft_tb/start
add wave -dec /fft_tb/done

add wave -divider "FFT Internal Signals"
add wave -dec /fft_tb/fft_uut/state
add wave -dec /fft_tb/fft_uut/addr_a
add wave -dec /fft_tb/fft_uut/addr_b
add wave -dec /fft_tb/fft_uut/rom_addr
add wave -dec /fft_tb/fft_uut/tw_addr
add wave -dec /fft_tb/fft_uut/we_a
add wave -dec /fft_tb/fft_uut/we_b

add wave -divider "RAM Interface A"
add wave -dec /fft_tb/fft_uut/din_real_a
add wave -dec /fft_tb/fft_uut/din_imag_a
add wave -dec /fft_tb/fft_uut/dout_real_a
add wave -dec /fft_tb/fft_uut/dout_imag_a

add wave -divider "RAM Interface B"
add wave -dec /fft_tb/fft_uut/din_real_b
add wave -dec /fft_tb/fft_uut/din_imag_b
add wave -dec /fft_tb/fft_uut/dout_real_b
add wave -dec /fft_tb/fft_uut/dout_imag_b

add wave -divider "Butterfly Signals"
add wave -dec /fft_tb/fft_uut/bf_inst/xr
add wave -dec /fft_tb/fft_uut/bf_inst/xi
add wave -dec /fft_tb/fft_uut/bf_inst/yr
add wave -dec /fft_tb/fft_uut/bf_inst/yi
add wave -dec /fft_tb/fft_uut/bf_inst/wr
add wave -dec /fft_tb/fft_uut/bf_inst/wi
add wave -dec /fft_tb/fft_uut/bf_inst/out0_r
add wave -dec /fft_tb/fft_uut/bf_inst/out0_i
add wave -dec /fft_tb/fft_uut/bf_inst/out1_r
add wave -dec /fft_tb/fft_uut/bf_inst/out1_i

run -all