% Analiza widma sygnału z pliku WAV
clear all;
close all;
clc;

% 1. Wczytanie pliku WAV
[filename, pathname] = uigetfile('*.wav', 'Wybierz plik WAV do analizy');
if isequal(filename, 0)
    disp('Anulowano wybór pliku');
    return;
end

[y, fs] = audioread(fullfile(pathname, filename));

% 2. Preprocessing sygnału
% Konwersja na mono jeśli stereo
if size(y, 2) > 1
    y = mean(y, 2);
    disp('Sygnał stereo przekonwertowany na mono');
end

% Parametry analizy
N = length(y);          % Długość sygnału
t = (0:N-1)/fs;         % Oś czasu
f = (0:N-1)*(fs/N);     % Oś częstotliwości
f = f(1:floor(N/2));    % Tylko częstotliwości dodatnie

% 3. Obliczenie transformaty Fouriera
Y = fft(y);
P2 = abs(Y/N);          % Spektrum dwustronne
P1 = P2(1:floor(N/2));  % Spektrum jednostronne
P1(2:end-1) = 2*P1(2:end-1); % Skalowanie amplitudy

% 4. Wykrywanie głównych składowych częstotliwościowych
[peaks, locs] = findpeaks(P1, 'MinPeakHeight', 0.1*max(P1));
freq_peaks = f(locs);

% 5. Wizualizacja wyników
figure('Name', 'Analiza widma sygnału', 'NumberTitle', 'off');

% Wykres sygnału w dziedzinie czasu
subplot(2,1,1);
plot(t, y);
title('Sygnał w dziedzinie czasu');
xlabel('Czas [s]');
ylabel('Amplituda');
xlim([0 t(end)]);
grid on;

% Wykres widma częstotliwościowego
subplot(2,1,2);
plot(f, P1);
title('Widmo częstotliwościowe (FFT)');
xlabel('Częstotliwość [Hz]');
ylabel('|Amplituda|');
hold on;
plot(f(locs), peaks, 'ro'); % Zaznaczenie pików
for i = 1:length(peaks)
    text(f(locs(i)), peaks(i), sprintf(' %.1f Hz', freq_peaks(i)));
end
hold off;
grid on;
xlim([0 fs/2]);

% Wyświetlenie informacji o sygnale
fprintf('\nAnaliza pliku: %s\n', filename);
fprintf('Częstotliwość próbkowania: %d Hz\n', fs);
fprintf('Czas trwania: %.2f s\n', N/fs);
fprintf('Wykryte główne składowe częstotliwościowe:\n');
disp(freq_peaks');