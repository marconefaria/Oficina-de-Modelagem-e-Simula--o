% Exercicio2

% Funçoes:
    % x1[n] = 0.9*delt[n-5];
    % w = 2.pi.f

n = 20;
T = linspace(0, n, n);

F = 1 / (2 * pi);
zerosF = zeros(n);
n = n*Fs;

zerosF(1:F:end) = 0.9;


FT = fft(zerosF);
w = 2. * pi .*(T - 5)/(n);


subplot(2, 1, 1), 
plot(w, abs(FT));
ylabel('|x|');
axis tight;

subplot(2,1,2), 
plot(w, rad2deg(angle(FT)));
ylabel('x[deg]');
xlabel('\omega [rad/s');
