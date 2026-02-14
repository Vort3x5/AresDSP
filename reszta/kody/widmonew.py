import numpy as np
import matplotlib.pyplot as plt

# Wczytanie danych z pliku
filename = "fft_output_new.txt"
real_parts = []
imag_parts = []

with open(filename, "r") as file:
    for line in file:
        real, imag = map(int, line.strip().split())
        real_parts.append(real)
        imag_parts.append(imag)

# Konwersja do liczb zespolonych
complex_fft = np.array(real_parts) + 1j * np.array(imag_parts)

# Obliczenie modułu (widma)
magnitude = np.abs(complex_fft)

# Wygenerowanie wykresu
plt.figure(figsize=(12, 6))
plt.plot(magnitude)
plt.title("Widmo sygnału (moduł FFT)")
plt.xlabel("Próbka FFT")
plt.ylabel("Amplituda")
plt.grid(True)
plt.tight_layout()
plt.show()
