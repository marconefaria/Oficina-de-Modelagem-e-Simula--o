% Exercicio3

% Funçoes:
    % x1[n] = sin(5*pi*n);
    % w = 2.pi.f

Ts = 0.01;
t = 0 : Ts : 8;
x = tan(4 * pi * t);
x = fft(x);
N = length(t);
w = 2 * pi * (0: (N - 1)) / (N * Ts);

subplot(2, 1, 1);
plot(w, abs(x));

subplot(2, 1, 2);
plot(w, rad2deg(angle(x)));