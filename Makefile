.PHONY: all clean sim view analyze

TOP_MODULE = fft_tb
SRC_DIR = Verilog
SOURCES = $(SRC_DIR)/butterfly.sv \
          $(SRC_DIR)/fft_4096.sv \
          $(SRC_DIR)/ram_4096.sv \
          $(SRC_DIR)/rom_input.sv \
          $(SRC_DIR)/twiddle_rom.sv \
          $(SRC_DIR)/fft_tb.sv

SIM_OUT = fft_sim
VCD_FILE = fft_tb.vcd

all: sim

sim:
	iverilog -g2012 -o $(SIM_OUT) $(SOURCES)
	vvp $(SIM_OUT)

view:
	@if [ -f $(VCD_FILE) ]; then \
		gtkwave $(VCD_FILE) & \
	else \
		echo "Błąd: Plik $(VCD_FILE) nie istnieje. Uruchom najpierw 'make sim'"; \
	fi

analyze:
	@if [ -f fft_output.txt ]; then \
		python3 reszta/kody/deepseeknowewidmo.py; \
	else \
		echo "Błąd: Brak pliku fft_output.txt. Uruchom najpierw 'make sim'"; \
	fi

clean:
	rm -f $(SIM_OUT) $(VCD_FILE) fft_output.txt
	rm -rf obj_dir

full: clean sim analyze
