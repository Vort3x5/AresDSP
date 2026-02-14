import numpy as np
import matplotlib.pyplot as plt
import wave
import struct
import sys
import os


def read_wav_file(filename):
    """Odczytuje plik .wav i zwraca sygnał oraz częstotliwość próbkowania."""
    with wave.open(filename, 'rb') as wav_file:
        n_channels = wav_file.getnchannels()
        sample_width = wav_file.getsampwidth()
        framerate = wav_file.getframerate()
        n_frames = wav_file.getnframes()

        frames = wav_file.readframes(n_frames)
        if sample_width == 1:
            fmt = f"{n_frames * n_channels}B"  # unsigned char
        elif sample_width == 2:
            fmt = f"{n_frames * n_channels}h"  # short
        else:
            raise ValueError("Nieobsługiwana szerokość próbki")

        signal = np.array(struct.unpack(fmt, frames))

        if n_channels == 2:
            signal = signal.reshape(-1, 2)
            signal = signal.mean(axis=1)  # Konwersja stereo na mono

    return signal, framerate


def fft(x):
    """Ręcznie zaimplementowana szybka transformata Fouriera (FFT)."""
    N = len(x)
    if N <= 1:
        return x
    even = fft(x[0::2])
    odd = fft(x[1::2])
    T = [np.exp(-2j * np.pi * k / N) * odd[k] for k in range(N // 2)]
    return [even[k] + T[k] for k in range(N // 2)] + [even[k] - T[k] for k in range(N // 2)]


def analyze_frequencies(signal, sample_rate):
    """Analizuje sygnał i znajduje znaczące piki częstotliwościowe."""
    n = len(signal)

    # Usuwanie składowej stałej (DC offset)
    signal = signal - np.mean(signal)

    # Zastosowanie okna Hanninga
    window = np.hanning(n)
    signal_windowed = signal * window

    # Obliczenie FFT
    fft_result = np.abs(fft(signal_windowed))

    # Obliczenie częstotliwości (pomijamy częstotliwość ujemną)
    freqs = np.fft.fftfreq(n, d=1 / sample_rate)[:n // 2]
    fft_magnitude = fft_result[:n // 2]

    # Normalizacja (do wartości maksymalnej)
    if np.max(fft_magnitude) > 0:
        fft_magnitude = fft_magnitude / np.max(fft_magnitude)

    # Znajdź piki (powyżej pewnego progu)
    threshold = 0.1  # Próg dla znaczących pików
    peaks = np.where(fft_magnitude > threshold)[0]

    # Pogrupuj bliskie piki
    peak_groups = []
    if len(peaks) > 0:
        current_group = [peaks[0]]
        for peak in peaks[1:]:
            if peak - current_group[-1] < 2:  # Grupuj bliskie częstotliwości
                current_group.append(peak)
            else:
                peak_groups.append(current_group)
                current_group = [peak]
        peak_groups.append(current_group)

    # Wybierz najwyższy pik z każdej grupy
    significant_peaks = []
    for group in peak_groups:
        max_peak_idx = group[np.argmax(fft_magnitude[group])]
        significant_peaks.append(max_peak_idx)

    peak_freqs = freqs[significant_peaks]
    peak_mags = fft_magnitude[significant_peaks]

    # Filtruj piki powyżej 20 Hz (aby pominąć resztki DC i niskie zakłócenia)
    mask = peak_freqs > 20
    peak_freqs = peak_freqs[mask]
    peak_mags = peak_mags[mask]

    return freqs, fft_magnitude, peak_freqs, peak_mags


def plot_spectrum(freqs, spectrum, peak_freqs, peak_mags, filename):
    """Rysuje widmo sygnału z oznaczonymi pikami i zapisuje do pliku PNG."""
    plt.figure(figsize=(12, 6))
    plt.plot(freqs, spectrum, label="Widmo amplitudowe")

    # Zaznacz tylko istotne piki
    if len(peak_freqs) > 0:
        plt.scatter(peak_freqs, peak_mags, color='red', label="Znaczące piki")
        for freq, mag in zip(peak_freqs, peak_mags):
            plt.text(freq, mag + 0.05, f"{freq:.2f} Hz", ha='center', fontsize=9)

    plt.title(f"Analiza częstotliwościowa sygnału: {os.path.basename(filename)}")
    plt.xlabel("Częstotliwość (Hz)")
    plt.ylabel("Amplituda (znormalizowana)")
    plt.grid()
    plt.legend()
    plt.xlim(0, max(freqs))  # Pomijamy częstotliwości ujemne

    # Zapis wykresu do pliku PNG
    output_filename = os.path.splitext(filename)[0] + "_spectrum.png"
    plt.savefig(output_filename, dpi=300, bbox_inches='tight')
    print(f"Wykres zapisano jako: {output_filename}")

    plt.show()


def main():
    # Sprawdź argumenty linii poleceń
    if len(sys.argv) != 2:
        print("Użycie: python analizator_fft.py <plik.wav>")
        print("Przykład: python analizator_fft.py test.wav")
        sys.exit(1)

    filename = sys.argv[1]

    # Sprawdź czy plik istnieje
    if not os.path.isfile(filename):
        print(f"Błąd: Plik '{filename}' nie istnieje!")
        sys.exit(1)

    # Sprawdź rozszerzenie pliku
    if not filename.lower().endswith('.wav'):
        print("Uwaga: Plik nie ma rozszerzenia .wav, ale spróbuję go wczytać...")

    # Wczytaj sygnał z pliku .wav
    try:
        signal, sample_rate = read_wav_file(filename)
    except Exception as e:
        print(f"Błąd podczas wczytywania pliku: {e}")
        sys.exit(1)

    # Ogranicz do pierwszych N próbek (dla wydajności)
    max_samples = 4096  # Można zwiększyć dla lepszej rozdzielczości
    if len(signal) > max_samples:
        signal = signal[:max_samples]

    # Analiza częstotliwości
    freqs, spectrum, peak_freqs, peak_mags = analyze_frequencies(signal, sample_rate)

    # Wizualizacja i zapis do pliku
    plot_spectrum(freqs, spectrum, peak_freqs, peak_mags, filename)

    # Wyświetl znalezione piki
    print("\nZnalezione znaczące piki częstotliwościowe (>20 Hz):")
    if len(peak_freqs) > 0:
        for freq, mag in zip(peak_freqs, peak_mags):
            print(f"- {freq:.2f} Hz (względna amplituda: {mag:.2f})")
    else:
        print("Nie znaleziono istotnych pików powyżej progu.")


if __name__ == "__main__":
    main()