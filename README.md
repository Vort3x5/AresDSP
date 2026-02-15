# AresDSP - Mars Rover Signal Analysis System

Sprzętowo-programowy system analizy sygnału z łazika marsjańskiego 
wykorzystujący FFT 4096-punktową do detekcji częstotliwości transmisji.

## Misja

NASA utraciło połączenie z łazikiem marsjańskim podczas misji eksploracyjnej. 
Podejrzewa się, że łazik ciągle próbuje nawiązać komunikację. 
Wykorzystując radioteleskop VLA, nasłuchiwane są sygnały w nadziei na wykrycie transmisji.

**Cel:** 
Zaprojektować i zrealizować system sprzętowo-programowy, 
który pozwoli w jak najkrótszym czasie i jak najdokładniej 
przebadać odebrany sygnał w celu wykrycia zakresu fal, 
na których odbywa się potencjalna transmisja.

---

### Wykryte częstotliwości transmisji łazika:

| Rank | Częstotliwość [Hz] | Amplituda | Status |
|------|-------------------|-----------|---------|
| **1** | **2508.62** | 0.572 |  **GŁÓWNA TRANSMISJA** |
| **2** | **1507.32** | 0.498 |  Subharmoniczna |
| **3** | **1550.39** | 0.335 |  Harmoniczna |

### Wizualizacja widma

<!-- ZRZUT EKRANU #1: Pełny wykres widma z zaznaczonymi pikami -->
![Widmo sygnału marsjańskiego](docs/screenshots/spectrum_analysis.png)

**Opis wykresu:** Znormalizowane widmo amplitudowe sygnału z zaznaczonymi trzema dominującymi pikami częstotliwościowymi. Główna transmisja wykryta na częstotliwości ~2508 Hz.

---

## Architektura Systemu

### Sprzętowa implementacja FFT (SystemVerilog)

- **FFT 4096-punktowa** - Radix-2 Decimation-in-Time (DIT)
- **12 etapów** obliczeniowych (log2(4096) = 12)
- **Dwuportowa RAM** - zoptymalizowana dla bloków M10K (Intel FPGA)
- **Pipeline FSM** - maszyna stanów dla sterowania przepływem danych
- **Butterfly operations** - podstawowe operacje FFT z mnożeniem zespolonym
- **Twiddle factors ROM** - przedgenerowane współczynniki obrotu W_N^k

### schemat blokowy systemu
```
                    ┌─────────────────────────────────────────┐
                    │         FFT 4096 (Top Module)           │
                    │              fft_4096.sv                │
                    └─────────────────────────────────────────┘
                                      │
                ┌─────────────────────┼─────────────────────┐
                │                     │                     │
                ▼                     ▼                     ▼
    ┌───────────────────┐  ┌───────────────────┐  ┌──────────────────┐
    │   ROM Input       │  │   Twiddle ROM     │  │   RAM 4096       │
    │   rom_input.sv    │  │   twiddle_rom.sv  │  │   ram_4096.sv    │
    │                   │  │                   │  │                  │
    │ • 4096 próbek     │  │ • W_N^k factors   │  │ • Dual-port      │
    │ • Q1.15 format    │  │ • 2048 entries    │  │ • 4096×32-bit    │
    │ • Bit-reversed    │  │ • cos/sin LUT     │  │ • M10K optimized │
    └───────────────────┘  └───────────────────┘  └──────────────────┘
                                      │
                                      ▼
                          ┌───────────────────────┐
                          │   Butterfly Unit      │
                          │   butterfly.sv        │
                          │                       │
                          │ • Radix-2 operation   │
                          │ • out0 = x + y·W      │
                          │ • out1 = x - y·W      │
                          │ • 32-bit multiply     │
                          │ • >>15 normalization  │
                          └───────────────────────┘
                                      │
                                      ▼
                          ┌───────────────────────┐
                          │      FSM Control      │
                          │                       │
                          │ IDLE → LOAD → FFT_READ│
                          │   → CALC → WRITE      │
                          │      → DONE           │
                          └───────────────────────┘
                                      │
                                      ▼
                          ┌───────────────────────┐
                          │     Testbench         │
                          │     fft_tb.sv         │
                          │                       │
                          │ • Stimulus generation │
                          │ • VCD dump            │
                          │ • Result extraction   │
                          └───────────────────────┘
```

### Parametry wydajnościowe

- **Czas obliczeń:** ~2.54 ms @ 50 MHz
- **Liczba cykli:** 126,976 (4096 LOAD + 12×2048×5 FFT)
- **Szerokość danych:** 16-bit fixed-point (Q1.15)
- **Przepustowość:** ~1,614,000 próbek/s

---

## Analiza w GTKWave

### Przebieg sygnałów sterujących

<!-- ZRZUT EKRANU #3: GTKWave - sygnały sterujące (clk, reset, start, done, state) -->
![Sygnały sterujące FSM](docs/screenshots/gtkwave_control_signals.png)

**Widoczne sygnały:**
- `clk` - zegar systemowy (50 MHz)
- `reset` - reset asynchroniczny
- `start` - inicjalizacja obliczeń FFT
- `done` - sygnał zakończenia (HIGH po ~126976 cyklach)
- `state` - aktualny stan FSM (IDLE→LOAD→FFT_READ→...→DONE)

### Przejścia między etapami FFT

<!-- ZRZUT EKRANU #4: GTKWave - zmiana stage, group_count, k_count -->
![Progresja obliczeń FFT](docs/screenshots/gtkwave_fft_stages.png)

**Widoczne sygnały:**
- `stage` - aktualny etap FFT (0-11)
- `group_count` - numer grupy w danym etapie
- `k_count` - indeks motyla w grupie
- `addr_a`, `addr_b` - adresy odczytu/zapisu RAM

### Operacje motyla (butterfly)

<!-- ZRZUT EKRANU #5: GTKWave - szczegóły operacji butterfly -->
![Operacje motyla FFT](docs/screenshots/gtkwave_butterfly.png)

**Widoczne sygnały:**
- `bf_xr`, `bf_xi` - wejście X (real, imag)
- `bf_yr`, `bf_yi` - wejście Y (real, imag)
- `bf_wr`, `bf_wi` - współczynnik twiddle (real, imag)
- `bf_out0_r`, `bf_out0_i` - wyjście motyla 0
- `bf_out1_r`, `bf_out1_i` - wyjście motyla 1

---

## Struktura Projektu

```
AresDSP/
│
├── README.md                 
├── Makefile                  
├── signalSample.txt      
│
├── docs/                     
│   ├── SYCYF_description.txt 
│   └── screenshots/          
│
├── hdl/                      
│   ├── butterfly.sv          
│   ├── fft_4096.sv           
│   ├── ram_4096.sv           
│   ├── rom_input.sv          
│   ├── twiddle_rom.sv        
│   └── fft_tb.sv             
│
├── sim/                      
│   ├── fft_output.txt        
│   └── fft_tb.vcd            
│
├── scripts/                  
│   ├── analyze_fft.py        
│   └── generate_twiddle.py   
│
└── results/                  
    ├── widmo_sygnalu.png     
    └── transmission_frequencies.txt
```

---

## Instalacja i Konfiguracja

### Wymagania systemowe

- **Symulator HDL:** Icarus Verilog ≥ 11.0
- **Python:** ≥ 3.8
- **Biblioteki Python:** NumPy, Matplotlib, SciPy
- **GTKWave:** (opcjonalnie) do analizy przebiegów

---

## Szybki Start

### 1. Klonowanie repozytorium
```bash
git clone https://github.com/Vort3x5/AresDSP.git
cd AresDSP
```

### 2. Uruchomienie pełnej analizy
```bash
make all
```

**Wykonane operacje:**
1. Kompilacja modułów SystemVerilog (Icarus Verilog)
2. Uruchomienie symulacji FFT (~2.5 ms czasu symulowanego)
3. Zapis wyników do `sim/fft_output.txt`
4. Analiza częstotliwościowa w Pythonie
5. Generowanie wykresu widma w `results/widmo_sygnalu.png`

### 3. Podgląd przebiegów w GTKWave
```bash
make view
```

<!-- ZRZUT EKRANU #6: Terminal output z make all -->
![Kompilacja i uruchomienie](docs/screenshots/terminal_make_all.png)

---

### Dostępne komendy

```bash
make all      # Symulacja + analiza
make sim      # Tylko symulacja FFT
make analyze  # wykres widma
make view     # Otwórz GTKWave z przebiegami
make clean    # Usuń pliki tymczasowe
make help     # Pomoc
```

### Analiza ręczna w GTKWave

Po uruchomieniu `make view`, dodaj następujące sygnały do widoku:

**Grupa 1: Sterowanie**
- `clk`, `reset`, `start`, `done`

**Grupa 2: Maszyna stanów**
- `state`, `stage`, `group_count`, `k_count`

**Grupa 3: Adresy i dane**
- `addr_a`, `addr_b`, `tw_addr`
- `bf_xr`, `bf_xi`, `bf_out0_r`, `bf_out0_i`

**Ustawienia wyświetlania:**
- `state`, `stage`: Decimal
- Dane motyla: Signed Decimal
- Adresy: Hex

---

## 🔬 Algorytm FFT

### Implementacja Radix-2 DIT

Transformata Fouriera dla N=4096 próbek:

```
X[k] = Σ(n=0 to N-1) x[n] · e^(-j2πkn/N)
```

**Dekompozycja na 12 etapów:**

Dla każdego etapu `s` (0-11):
- Liczba grup: `N / (2^(s+1))`
- Rozmiar grupy: `2^(s+1)`
- Współczynnik twiddle: `W_N^k = e^(-j2πk/N)`

**Operacja motyla:**
```
out0 = x + y · W_N^k
out1 = x - y · W_N^k
```

### Sekwencja stanów FSM

```
IDLE (0)
  ↓ (start=1)
LOAD (1) ────── Ładowanie danych z ROM do RAM (4096 cykli)
  ↓            z bit-reversed addressing
FFT_READ (2) ── Odczyt pary próbek dla motyla
  ↓
FFT_WAIT (3) ── Czekanie na RAM (1 cykl latencji)
  ↓
FFT_CALC1 (4) ─ Latch danych wejściowych
  ↓
FFT_CALC2 (5) ─ Obliczenia motyla
  ↓
FFT_WRITE (6) ─ Zapis wyników
  ↓ (następny motyl lub etap)
  └─────────────────┘
  ↓ (wszystkie etapy zakończone)
DONE_STATE (7)
```

---

## 📐 Teoria Działania

### Format danych: Fixed-Point Q1.15

- **Zakres:** [-1.0, 1.0)
- **Rozdzielczość:** 1/32768 ≈ 0.00003
- **Reprezentacja:** 16-bit signed integer
  - Bit 15: znak
  - Bity 0-14: część ułamkowa

**Przykład:**
```
 0.5  → 0x4000 (16384)
-0.5  → 0xC000 (-16384)
 0.999 → 0x7FF8 (32760)
```

### Bit-Reversed Addressing

Dla FFT Radix-2 DIT, dane wejściowe muszą być przestawione w kolejności bit-reversed:

```
Naturalna kolejność:  0, 1, 2, 3, 4, 5, 6, 7
Bit-reversed (N=8):   0, 4, 2, 6, 1, 5, 3, 7
```

Dla N=4096 (12 bitów):
```
addr_natural = 0b000000000001 (1)
addr_reversed = 0b100000000000 (2048)
```

---

## 🧪 Testy i Weryfikacja

### Test 1: Sygnał sinusoidalny (1 kHz @ 44.1 kHz)

```bash
# Wygeneruj czysty sygnał testowy
python3 scripts/generate_test_signal.py --freq 1000 --samples 4096 > data/test_1khz.txt

# Zmień źródło w rom_input.sv i uruchom symulację
make sim
```

**Oczekiwany rezultat:** Pik na częstotliwości ~1000 Hz

### Test 2: Sygnał złożony (multi-tone)

<!-- ZRZUT EKRANU #7: Porównanie widm dla różnych sygnałów testowych -->
![Testy walidacyjne](docs/screenshots/validation_tests.png)

---

## 🎓 Teoria Sygnałów

### Twierdzenie o próbkowaniu (Nyquist-Shannon)

Częstotliwość próbkowania `fs` musi być co najmniej dwukrotnie większa od maksymalnej częstotliwości w sygnale:

```
fs ≥ 2 · f_max
```

Dla `fs = 44100 Hz`:
- Maksymalna wykrywalna częstotliwość: `22050 Hz`
- Rozdzielczość częstotliwości: `fs/N = 44100/4096 ≈ 10.77 Hz/bin`

### Okna czasowe

Dla redukcji zjawiska leakage, można zastosować okno Hanninga:

```python
window = np.hanning(N)
signal_windowed = signal * window
```

**Wady:** Zmniejszenie rozdzielczości częstotliwościowej  
**Zalety:** Redukcja "przecieków" spektralnych

---

## 📊 Benchmark

| Parametr | Wartość |
|----------|---------|
| Rozmiar FFT | 4096 punktów |
| Szerokość danych | 16-bit fixed-point |
| Częstotliwość zegara | 50 MHz |
| Liczba cykli | 126,976 |
| Czas obliczeń | 2.54 ms |
| Przepustowość | ~1.6M próbek/s |
| Zajętość pamięci (RAM) | 32 KB (4096×32-bit) |
| Zajętość pamięci (ROM) | ~48 KB (twiddle + input) |

**Porównanie z implementacjami programowymi:**

| Implementacja | Czas wykonania |
|---------------|----------------|
| **AresDSP (FPGA)** | **2.54 ms** |
| NumPy FFT (CPU i7) | ~0.8 ms |
| SciPy FFT (CPU i7) | ~0.9 ms |
| FFTW (CPU i7) | ~0.6 ms |
| Ręczna rekurencyjna | ~450 ms |

*Uwaga: Implementacja FPGA ma przewagę w zastosowaniach real-time i niskim poborze mocy.*

---

## 🐛 Rozwiązywanie Problemów

### Problem: `make sim` kończy się błędem "Cannot find module"

**Rozwiązanie:**
```bash
# Sprawdź czy wszystkie pliki istnieją
ls -R hdl/

# Upewnij się że ścieżki w Makefile są poprawne
make clean
make sim
```

### Problem: Brak pliku VCD po symulacji

**Rozwiązanie:**
Upewnij się, że w `hdl/tb/fft_tb.sv` dodano:
```systemverilog
initial begin
    $dumpfile("sim/fft_tb.vcd");
    $dumpvars(0, fft_tb);
    // ...
end
```

### Problem: Python zgłasza "ModuleNotFoundError: No module named 'numpy'"

**Rozwiązanie:**
```bash
pip3 install numpy matplotlib scipy
# lub dla NixOS:
nix-shell
```

---

## 🤝 Wkład i Rozwój

### Możliwe rozszerzenia

- [ ] **FFT 8192/16384** - większa rozdzielczość częstotliwościowa
- [ ] **Floating-point** - większa precyzja obliczeń
- [ ] **Pipeline architecture** - wyższa przepustowość
- [ ] **Xilinx/Intel IP cores** - integracja z narzędziami FPGA
- [ ] **AXI-Stream interface** - standardowy interfejs danych
- [ ] **Real-time audio input** - przetwarzanie na żywo

### Zgłaszanie błędów

Znalazłeś błąd? Otwórz [issue na GitHubie](https://github.com/Vort3x5/AresDSP/issues).

---

## 📄 Licencja

**MIT License**

Copyright (c) 2026 Vort3x5

Szczegóły w pliku [LICENSE](LICENSE).

---

## 🙏 Podziękowania

- **NASA** - za inspirację i dane misyjne
- **Icarus Verilog Team** - za wspaniały open-source symulator
- **Python Community** - za NumPy, SciPy i Matplotlib

---

## 📚 Bibliografia

1. Cooley, J. W., & Tukey, J. W. (1965). *An algorithm for the machine calculation of complex Fourier series*. Mathematics of Computation, 19(90), 297-301.
2. Oppenheim, A. V., & Schafer, R. W. (2009). *Discrete-Time Signal Processing* (3rd ed.). Prentice Hall.
3. Intel Corporation. (2023). *FPGA Memory Architecture*. Technical Documentation.
4. IEEE Std 1800-2023. *SystemVerilog - Unified Hardware Design, Specification, and Verification Language*.

---

## 👨‍🚀 Autor

**Vort3x5**  
GitHub: [@Vort3x5](https://github.com/Vort3x5)

Projekt stworzony w ramach kursu DSP i projektowania systemów cyfrowych.

---

<div align="center">

**🛰️ Mars Rover, słyszymy Cię! 🛰️**

[![GitHub stars](https://img.shields.io/github/stars/Vort3x5/AresDSP?style=social)](https://github.com/Vort3x5/AresDSP)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

</div>

---

## 📸 Lista Zrzutów Ekranu do Zrobienia

Stwórz folder `docs/screenshots/` i wykonaj następujące zrzuty ekranu:

### 1. `spectrum_analysis.png`
**Co:** Pełny wykres widma z wynikami analizy Python  
**Jak:** Uruchom `make analyze`, zrób screenshot okna matplotlib  
**Zawartość:** Wykres z niebieską linią widma i czerwonymi pikami z etykietami częstotliwości

### 2. `terminal_make_all.png`
**Co:** Output terminala podczas `make all`  
**Jak:** Uruchom `make clean && make all`, zrób screenshot całego outputu  
**Zawartość:** Linie z kompilacją, symulacją i wykrytymi częstotliwościami

### 3. `gtkwave_control_signals.png`
**Co:** Sygnały sterujące w GTKWave  
**Jak:**
```bash
make view
# W GTKWave dodaj: clk, reset, start, done, state
# Pokaż zakres czasowy od 0 do ~500 ns (obejmujący LOAD)
```
**Zawartość:** 5 sygnałów w grupie, widoczne przejścia IDLE→LOAD→FFT

### 4. `gtkwave_fft_stages.png`
**Co:** Progresja przez etapy FFT  
**Jak:**
```bash
# W GTKWave dodaj: stage, group_count, k_count, addr_a, addr_b
# Zoom na zakres ~100-200 µs (środek obliczeń FFT)
```
**Zawartość:** Zmiana `stage` z 0→1→2, inkrementacja liczników

### 5. `gtkwave_butterfly.png`
**Co:** Szczegóły operacji butterfly  
**Jak:**
```bash
# W GTKWave dodaj: bf_xr, bf_xi, bf_yr, bf_yi, bf_wr, bf_wi,
#                   bf_out0_r, bf_out0_i, bf_out1_r, bf_out1_i
# Format: Signed Decimal
# Zoom na pojedynczą operację motyla (~5 cykli)
```
**Zawartość:** 10 sygnałów pokazujących wejścia i wyjścia motyla

### 6. `validation_tests.png` (opcjonalnie)
**Co:** Porównanie widm dla różnych sygnałów testowych  
**Jak:** Stwórz subplot z 2-3 wykresami dla różnych częstotliwości testowych  
**Zawartość:** Grid z wykresami pokazującymi poprawność detekcji pików

---

**Porady do zrzutów GTKWave:**
- Użyj **Data Format → Signed Decimal** dla danych motyla
- Użyj **Data Format → Hex** dla adresów
- Grupuj sygnały klikając prawym → `Insert Group`
- Dostosuj kolory: prawym na sygnał → `Highlight`
- Zapisz układ: `File → Write Save File` (jako `fft_complete.gtkw`)
