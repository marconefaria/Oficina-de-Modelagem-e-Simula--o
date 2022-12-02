% 1
% A = [0 1 0; 0 0 1; -1 -2 -1];
% B = [0; 0; 2];
% C = [1 0 0]; % saída é igual a x, que é igual a x1
% D = [0];
% espaco_estados = ss(A,B,C,D)
% 
% [num, den] = ss2tf(A,B,C,D);
% G = tf(num, den)

% 2
% J1 = 1;
% J2 = 2;
% k1 = 1;
% k2 = 2;
% k3 = 3;
% 
% A = [0 1 0 0; [-(k1+k2) 0 k2 0]./J1; 0 0 0 1; [k2 0 -(k2+k3) 0]./J2];
% B = [0; 1/J1; 0; 0];
% C = [1 0 0 0];
% D = [0];
% espaco_estados = ss(A,B,C,D)

% [num, den] = ss2tf(A,B,C,D);
% G = tf(num,den)

% C = [1 0 0 0; 0 0 1 0];
% D = [0;0];
% espaco_estados = ss(A,B,C,D)
% 
% [num, den] = ss2tf(A,B,C,D);
% G1 = tf(num(1,1:end),den)
% 
% G2 = tf(num(2,1:end),den)

% 3
% syms x y;
% z = x * y;
% lin(x, y) = taylor(z, [x,y], [6,11], 'Order',2)
% 
% erro = abs(lin(5,10) - 50)/50;
% erro = double(erro)

% 4
% f1 = exp(x);
% y5 = taylor(f1, x, 1.5,'Order', 6);
% y4 = taylor(f1, x, 1.5,'Order', 5);
% y3 = taylor(f1, x, 1.5,'Order', 4);
% y2 = taylor(f1, x, 1.5,'Order', 3);
% y1 = taylor(f1, x, 1.5,'Order', 2);
% 
% ys = [f1 y5 y4 y3 y2 y1];
% 
% hold on
%     for a = ys
%         fplot(a,[-3 3]);
%     end
% hold off;
% 
% legend('exp','5a ordem','4a ordem', ...
% '3a ordem','2a ordem','1a ordem')
% legend("Position",[0.5,0.2,0.3,0.2])

% 5
% f(x) = cos(x)
% T(x) = taylor(f, x, 3*pi/2,'Order', 2)

% fplot(f, [pi 2*pi])
% hold on
% fplot(T, [pi 2*pi])
% hold off
% 
% legend('cos(x)', 'Aproximação [Taylor]');
% legend("Position", [0.2,0.8,0.3,0.1]);
% 
% erro_lim_superior = (cos(pi) - double(T(pi)))/cos(pi)
% erro_lim_inferior = (cos(2*pi) - double(T(2*pi)))/cos(2*pi)

% fplot(f,[4 5.5])
% hold on
% fplot(T,[4 5.5])
% hold off
% legend('cos(x)','Aprox por taylor');
% legend("Position",[0.2,0.7,0.3,0.1]);
% 
% erro_lim_sup = (cos(5.5) - double(T(5.5)))/cos(5.5)
% erro_lim_inf = (cos(4) - double(T(4)))/cos(4)

% 6
syms theta x y w v;
syms theta0 x0 y0 w0 v0;
syms x1_p x2_p x3_p;

x1_ponto = taylor(v*cos(theta),[v theta],[v0 theta0], 'Order',2);
constantes = subs(x1_ponto,[v theta],[0 0]);
x1_pFinal = simplify(x1_ponto -constantes)
x2_ponto = taylor(v*sin(theta),[v theta],[v0 theta0], 'Order',2);
constantes = subs(x2_ponto,[v theta],[0 0]);
x2_pFinal = simplify(x2_ponto -constantes)
x3_pFinal = w

eqs = [x1_pFinal;x2_pFinal;x3_pFinal] == [x1_p;x2_p;x3_p]

[A,b] = equationsToMatrix(eqs,[v,theta,w]) % Obtendo a matriz A

x = [v;theta;w]