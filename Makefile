SRC_FILES = hdl/butterfly.sv \
            hdl/fft_4096.sv \
            hdl/ram_4096.sv \
            hdl/rom_input.sv \
            hdl/twiddle_rom.sv \
            hdl/fft_tb.sv

SIM_OUT   = sim/fft_sim
VCD_FILE  = sim/fft_tb.vcd
FFT_OUT   = sim/fft_output.txt

PYTHON = python3

.PHONY: all clean sim analyze view help

all: sim analyze

sim:
	iverilog -g2012 -o $(SIM_OUT) $(SRC_FILES)
	vvp $(SIM_OUT)

analyze: sim
	cd sim/ && $(PYTHON) ../scripts/analyze_fft.py

view:
	@if [ ! -f $(VCD_FILE) ]; then \
		echo "Plik VCD nie istnieje. Najpierw uruchom 'make sim'"; \
		exit 1; \
	fi
	gtkwave $(VCD_FILE) &

clean:
	rm -f $(SIM_OUT) $(VCD_FILE) $(FFT_OUT)
	rm -f results/*.png

twiddle:
	$(PYTHON) scripts/generate_twiddle.py > hdl/twiddle_rom.sv

help:
	@echo "Dostępne komendy:"
	@echo "  make all      - Symulacja + analiza"
	@echo "  make sim      - Tylko symulacja FFT"
	@echo "  make analyze  - wykres widma"
	@echo "  make view     - Otwórz GTKWave z przebiegami"
	@echo "  make twiddle  - Wygeneruj współczynniki twiddle"
	@echo "  make clean    - Usuń pliki tymczasowe"
	@echo "  make help     - Pokaż komendy"
