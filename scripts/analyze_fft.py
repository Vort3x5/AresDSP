import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

FFT_OUTPUT = 'fft_output.txt'
SPECTRUM_PLOT = '../results/widmo_sygnalu.png'
SAMPLE_RATE = 44100
PEAK_THRESHOLD = 0.1

def load_fft_results(filename):
    data = np.loadtxt(filename)
    real_part = data[:, 0]
    imag_part = data[:, 1]
    return real_part, imag_part

def detect_peaks(frequencies, amplitudes, threshold=PEAK_THRESHOLD):
    peaks, _ = find_peaks(amplitudes, 
                          height=threshold * np.max(amplitudes),
                          distance=3)
    
    top_peaks_idx = np.argsort(amplitudes[peaks])[-5:][::-1]
    return peaks[top_peaks_idx]

def plot_spectrum(frequencies, amplitudes, peaks):
    plt.figure(figsize=(12, 6))
    plt.plot(frequencies, amplitudes, label='Widmo', linewidth=0.8)
    
    plt.scatter(frequencies[peaks], amplitudes[peaks],
                color='red', s=50, label='Piki transmisji', zorder=5)
    
    for i, peak in enumerate(peaks):
        freq = frequencies[peak]
        amp = amplitudes[peak]
        plt.text(freq, amp, f'{i+1}: {freq:.1f} Hz\n{amp:.3f}',
                ha='center', va='bottom', fontsize=9,
                bbox=dict(boxstyle='round', facecolor='yellow', alpha=0.5))
    
    plt.title('Widmo sygnału marsjańskiego - wykryte transmisje')
    plt.xlabel('Częstotliwość [Hz]')
    plt.ylabel('Znormalizowana amplituda')
    plt.grid(True, alpha=0.3)
    plt.legend()
    plt.xlim(0, SAMPLE_RATE // 2)
    plt.tight_layout()
    
    plt.savefig(SPECTRUM_PLOT, dpi=300, bbox_inches='tight')
    print(f'Wykres zapisany: {SPECTRUM_PLOT}')

def main():
    print('Wczytywanie wyników FFT...')
    real, imag = load_fft_results(FFT_OUTPUT)
    
    amplitudes = np.sqrt(real**2 + imag**2)
    amplitudes = amplitudes / len(amplitudes)
    
    N = len(amplitudes)
    frequencies = np.fft.fftfreq(N, 1/SAMPLE_RATE)[:N//2]
    positive_amp = amplitudes[:N//2]
    
    print('Detekcja pików częstotliwościowych...')
    peaks = detect_peaks(frequencies, positive_amp)
    
    print('\n' + '='*60)
    print('WYKRYTE CZĘSTOTLIWOŚCI TRANSMISJI ŁAZIKA:')
    print('='*60)
    for i, peak in enumerate(peaks):
        freq = frequencies[peak]
        amp = positive_amp[peak]
        print(f'  {i+1}. {freq:8.2f} Hz  |  Amplituda: {amp:.6f}')
    print('='*60)
    
    plot_spectrum(frequencies, positive_amp, peaks)
    
    with open('../results/transmission_frequencies.txt', 'w') as f:
        f.write('Mars Rover Transmission Frequencies\n')
        f.write('='*50 + '\n')
        for i, peak in enumerate(peaks):
            f.write(f'{i+1}. {frequencies[peak]:.2f} Hz\n')
    
    print('\nAnaliza zakończona pomyślnie!')

if __name__ == '__main__':
    main()
