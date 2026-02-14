import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

# Wczytanie danych z pliku
data = np.loadtxt('fft_output.txt')

# Podział na części rzeczywiste i urojone
real_part = data[:, 0]
imag_part = data[:, 1]

# Obliczenie amplitud
amplitudes = np.sqrt(real_part**2 + imag_part**2)

# Normalizacja amplitud
amplitudes = amplitudes / len(amplitudes)

# Generowanie osi częstotliwości
N = len(amplitudes)
fs = 44100
frequencies = np.fft.fftfreq(N, 1/fs)

# Wybór tylko częstotliwości dodatnich (prawa połowa)
positive_freq = frequencies[:N//2]
positive_amp = amplitudes[:N//2]

# Wykrywanie pików
peaks, _ = find_peaks(positive_amp, height=0.1*np.max(positive_amp),
                      distance=3)

# Znajdowanie 5 najwyższych pików
if len(peaks) > 0:
    top_peaks_indices = np.argsort(positive_amp[peaks])[-5:][::-1]
    top_peaks = peaks[top_peaks_indices]

# Rysowanie widma
plt.figure(figsize=(12, 6))
plt.plot(positive_freq, positive_amp, label='Widmo')
plt.scatter(positive_freq[peaks], positive_amp[peaks],
            color='red', label='Wszystkie piki')

# Zaznaczanie i etykietowanie najwyższych pików
if len(peaks) > 0:
    for i, peak in enumerate(top_peaks):
        plt.scatter(positive_freq[peak], positive_amp[peak],
                    color='green', s=100,
                   label=f'Top {i+1}: {positive_freq[peak]:.3f} '
                         f'Hz' if i == 0 else None)
        plt.text(positive_freq[peak], positive_amp[peak],
                f'{i+1}: {positive_freq[peak]:.3f} '
                f'Hz\n{positive_amp[peak]:.3f}',
                ha='center', va='bottom')

plt.title('Widmo sygnału - częstotliwości dodatnie')
plt.xlabel('Częstotliwość [Hz]')
plt.ylabel('Znormalizowana amplituda')
plt.grid(True)
plt.legend()

output_filename = 'widmo_sygnalu.png'
plt.savefig(output_filename, dpi=300, bbox_inches='tight')
print(f'Wykres został zapisany jako: {output_filename}')

# Wyświetlanie informacji o pikach
if len(peaks) > 0:
    print("Znalezione piki na częstotliwościach:")
    for i, peak in enumerate(top_peaks):
        print(f"Top {i+1}: {positive_freq[peak]:.6f} Hz, "
              f"amplituda: {positive_amp[peak]:.6f}")

plt.show()