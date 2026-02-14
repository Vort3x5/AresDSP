import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

# Parametr: częstotliwość próbkowania w Hz
sampling_rate = 44100  # Zmień na odpowiednią wartość, jeśli znasz inną

# Wczytaj próbki sygnału z pliku
with open('signalSample.txt', 'r') as f:
    samples = np.array([float(line.strip()) for line in f if line.strip() != ""])

# Oblicz FFT
fft_result = np.fft.fft(samples)
fft_freqs = np.fft.fftfreq(len(samples), d=1/sampling_rate)

# Widmo amplitudowe
magnitude_spectrum = np.abs(fft_result)

# Użyj tylko dodatnich częstotliwości
half_n = len(samples) // 2
fft_freqs = fft_freqs[:half_n]
magnitude_spectrum = magnitude_spectrum[:half_n]

# Znajdź piki w widmie
peaks, _ = find_peaks(magnitude_spectrum, height=np.max(magnitude_spectrum) * 0.1)

# Wykres
plt.figure(figsize=(12, 6))
plt.plot(fft_freqs, magnitude_spectrum, label='Widmo')
plt.plot(fft_freqs[peaks], magnitude_spectrum[peaks], 'ro', label='Piki')

# Opisy częstotliwości pików
for peak in peaks:
    plt.text(fft_freqs[peak], magnitude_spectrum[peak], f'{fft_freqs[peak]:.1f} Hz',
             ha='center', va='bottom', fontsize=8, rotation=45)

plt.title("Widmo amplitudowe sygnału z oznaczonymi pikami (w Hz)")
plt.xlabel("Częstotliwość [Hz]")
plt.ylabel("Amplituda")
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
