% Exercicio5
load('exp1.mat')
load('exp2.mat')
Ts = 0.01;
N = length(time);
w = 2*pi*(0:(N-1)) / (N*Ts);
Y = fft(y);
U = fft(u);
H = Y./U;
figure
subplot(2, 1, 1), plot(w, abs(H)) ;
ylabel('|X|')

axis tight
subplot(2, 1, 2), plot(w, rad2deg(angle(H)))
ylabel('\angle X[deg]')
xlabel('\omega [rad/s]')
axis tight