{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "ares-dsp-dev";
  
  buildInputs = with pkgs; [
    verilator
	iverilog
    gtkwave
    
    # verilog
    
    (python3.withPackages (ps: with ps; [
      numpy
      matplotlib
      scipy
      pyaudio
    ]))
  ];

  shellHook = ''
	fish
	export PROJECT_ROOT=$(pwd)
	export VERILOG_PATH="$PROJECT_ROOT/Verilog"
  '';
}
