import numpy as np
import matplotlib.pyplot as plt

# Parametr próbkowania
fs = 44100  # Hz

# Wczytaj dane
real = []
imag = []

with open('fft_output.txt', 'r') as f:
    for line in f:
        parts = line.strip().split()
        if len(parts) == 2:
            try:
                r = int(parts[0])
                i = int(parts[1])
                real.append(r)
                imag.append(i)
            except ValueError:
                continue  # pomiń błędne linie

# Zamień na numpy array
real = np.array(real)
imag = np.array(imag)

# Oblicz widmo FFT (tylko pierwsza połowa)
N = len(real)
magnitude = np.sqrt(real**2 + imag**2)
magnitude_db = 20 * np.log10(magnitude + 1e-6)

# Wygeneruj oś częstotliwości w Hz (dla zakresu 0–Nyquist)
freqs = np.linspace(0, fs / 2, N // 2)

# Rysuj widmo tylko dla pierwszej połowy (bo FFT jest symetryczne)
plt.figure(figsize=(12, 6))
plt.plot(freqs, magnitude_db[:N // 2])
plt.title("Widmo sygnału (FFT) w dB")
plt.xlabel("Częstotliwość [Hz]")
plt.ylabel("Amplituda [dB]")
plt.grid(True)
plt.tight_layout()
plt.show()
