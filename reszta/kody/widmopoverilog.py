import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

# Wczytaj dane z pliku
with open("fft_results.txt", "r") as file:
    data = np.array([int(line.strip()) for line in file])

# Zakładamy, że dane FFT są symetryczne – bierzemy tylko pierwszą połowę
n = len(data)
half_n = n // 2
fft_magnitude = np.abs(data[:half_n])

# Osie częstotliwości – zakładamy próbkującą częstotliwość (np. 44100 Hz)
fs = 4000  # Zmień w zależności od rzeczywistej częstotliwości próbkowania
frequencies = np.linspace(0, fs / 2, half_n)

# Znajdź piki w widmie
peaks, properties = find_peaks(fft_magnitude, height=np.max(fft_magnitude) * 0.1)

# Wydrukuj częstotliwości pików
print("Częstotliwości transmisji (piki):")
for peak in peaks:
    print(f"{frequencies[peak]:.2f} Hz")

# Wykres widma
plt.figure(figsize=(12, 6))
plt.plot(frequencies, fft_magnitude)
plt.plot(frequencies[peaks], fft_magnitude[peaks], "rx")  # Zaznaczenie pików
plt.title("Widmo sygnału (FFT)")
plt.xlabel("Częstotliwość [Hz]")
plt.ylabel("Amplituda")
plt.grid(True)
plt.show()
