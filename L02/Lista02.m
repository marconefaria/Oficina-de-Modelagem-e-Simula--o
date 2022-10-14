% questão 1
% t = 0 : 0.01 : 2*pi;
% 
% transient = -10*exp(-t);
% permanent = cos(t*5);
% system = -10*exp(-t) + cos(t*5);
% 
% plot(t, transient, 'b', t, permanent, 'y', t, system, 'r');
% legend('Transitório', 'Permanente', 'Sistema');

% questão 2
% syms s t T x(t) x0 X(s) 
% syms m c k 
% 
% f(t) = m*diff(x, 2) + c*diff(x)+ k*x;
% 
% laplaceT = laplace(f(t));
% laplaceT = subs(laplaceT, {laplace(x(t), t, s), subs(diff(x(t), t), t, 0), x(0)},  {X(s), 0, 0});
% 
% Xs(s) = simplify(laplaceT/X(s));
% 
% pretty(1/Xs);
% 
% G = tf([1],[1 2 4])
% 
% step(G)

% questão 3
% syms x(t) y(t) Y(s) X(s) s t m c k
% syms m c k
% 
% f(t) = m*diff(x, 2) + c*diff(x) + k*x == c*diff(y) + k*y;
% 
% laplaceT = laplace(f(t), t, s);
% laplaceT = subs(laplaceT, laplace(x, t, s), Y);
% laplaceT = subs(laplaceT, x(0), 0);
% laplaceT = subs(laplaceT, subs(diff(x(t), t), t, 0), 0);
% laplaceT = subs(laplaceT, laplace(y, t, s), X);
% laplaceT = subs(laplaceT, y(0), 0);
% 
% pretty(laplaceT);
% 
% %G = (c*s + k)./(m*s.^2 + c*s + k);
% %pretty(G);
% 
% G = tf([0 2 4], [1 2 4]);
% t = 0 : 0.1 : 4*pi;
% fs = 2 * sin(t);
% 
% lsim(G, fs, t);

%questão 4
%syms t;
%f=sym(2*t)
%F= laplace(f)
%pretty(F)

%questão 5
%syms x
%f = sym(triangularPulse(x-1) + 1);
%F= laplace(f);
%pretty(F)
%fplot((triangularPulse(x-1) + 1), [0 4])

%questão 6
syms x
fplot(-x^2+x)
pretty(laplace(-x^2+x))

%questão 7
%xaxis = [0 1 2 2];
%yaxis = [ 0 10 10 0];
%plot(xaxis, yaxis)
%xlim([0 3])
%ylim([0 12])