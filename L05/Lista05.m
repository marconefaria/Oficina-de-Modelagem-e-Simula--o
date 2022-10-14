% %1
% %Sistema Massa Amortecedor
% %m*dx + c*x = f(t)
% m = 1;
% c = 10;
% Gi = tf(1, [m/100 c/100]);
% %Divisão por 100 por manipulação algebrica da amplitude do sinal de entrada
% 
% impulse(Gi)
% hold on

% %2
% m = 1;
% c = 10;
% Gd = tf(1, [m/1000 c/1000]);
% step(Gd,0.6)
% %Os gráfico são diferentes na medida que por não possuir mola o coeficiente
% %elástico 'k' = 0 e portanto não há oscilação 

% %3
% m = 1;
% k = 100;
% G = tf(k/10, [m/10 0 k/10]);
% [y,time]  = step(G, 5);
% figure(2)
% plot(time', y)

% %4
% zeta = 0;
% k = 100;
% wn = sqrt(k);
% wd = wn*sqrt(1-zeta);
% t = 0: 0.01: 5;
% fx_u = (1 - exp(-zeta.*wn.*t) .* (cos(wd.*t) + (zeta.*wn/wd).*sin(wd.*t)));
% figure(3)
% plot(t, fx_u)
% hold on
% figure(3)
% plot(time, y)
% Graficos muito similares, para notar a diferença é necessário aproximar da
% curva

% %5
% G = tf([10 4],[1 4 4])
% impulse (G)
% step(G)

% % 6
% G=tf([6.32 18 12.81],[1 6 11.32 18 12.81]);
% step(G)
% stepinfo(G)

% % 7
% j = [1, 2, 4 ,6];
% k = [0.3, 0.5, 0.7, 0.8];
% 
% for i = 1:4  
%     Gl(i,1) = tf(j(i)^2, [1 2*k(i)*j(i) j(i)^2]);
%     [x,t] = step(Gl);
%     plot(t,x)
%     legend({'ωn = 1', 'ωn = 2', 'ωn = 4', 'ωn = 6'})
% end

% % 8
% Gsb = tf([1],[1 1 1]);
% Gsp = tf([1],[1 3 1]);
% Gca = tf([1],[1 2 1]);
% 
% step(Gsb)
% hold
% step(Gsp)
% step(Gca)
% 
% legend({'Subamortecido', 'Superamortecido', 'Criticamente amortecido'})

% % 9
% [a, b] = ord2(2.4, 0.4);
% [A,B,C,D] = tf2ss(a,b);
% [b,a] = ss2tf (A,B,C,D)

% 10
num = [0 2 2 5]; 
den = [1 4 2 5]; 
[u , t] = gensig('square' , 20 , 100 , .01 );
plot(t, u);
