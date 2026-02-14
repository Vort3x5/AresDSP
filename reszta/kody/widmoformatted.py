import numpy as np
import matplotlib.pyplot as plt

# Parametry
fs = 44100        # Częstotliwość próbkowania
block_size = 32    # Rozmiar FFT

# Wczytanie danych z pliku
with open("formatted_fft_output.txt", 'r') as f:
    data = list(map(int, f.readlines()))

# Zamiana na liczby zespolone
complex_data = np.array([complex(data[i], data[i+1]) for i in range(0, len(data), 2)])

# Podział na bloki
num_blocks = len(complex_data) // block_size
fft_matrix = complex_data[:num_blocks * block_size].reshape((num_blocks, block_size))

# Obliczenie modułu FFT i uśrednienie po blokach
avg_magnitude = np.mean(np.abs(fft_matrix), axis=0)

# Generowanie osi częstotliwości (tylko dodatnie wartości)
freqs = np.fft.fftfreq(block_size, d=1/fs)
mask = freqs >= 0

# Wykres uśrednionego widma
plt.figure(figsize=(8, 4))
plt.stem(freqs[mask], avg_magnitude[mask])  # <-- poprawione tutaj
plt.title('Uśrednione widmo sygnału (FFT blokowe, 8 próbek, fs = 44100 Hz)')
plt.xlabel('Częstotliwość [Hz]')
plt.ylabel('Średnia amplituda')
plt.grid(True)
plt.tight_layout()
plt.show()
