% 1
%syms t y(t) x(t) s;
%p = diff(y,t);
%p2 = diff(y,t,2);

%eq = p + 5*y == 0;
%Y(t) = dsolve(eq, y(0)==5);
%fplot(Y,[0 1]);

% 2
%eq = p2 + 2*p == 0;
%Y(t) = dsolve(eq, y(0)==1, p(0)==4);
%fplot(Y, [0 5]);

% 3
%eq = p2 + 3*p + 2*y == 8*sin(5*t);
%Y(t) = dsolve(eq,y(0)==0, p(0)==0);
%pretty(Y(t));
%fplot(Y, [0 5]);

% 4
%eq = p2 + 3*p + exp(-t)*y == 8*sin(5*t);
%Y(t) = dsolve(eq,y(0)==0, p(0)==0);
%pretty(Y(t));

% 5
%eq = diff(y,3) + 4*p == t;
%Y(t) = dsolve(eq,y(0)==0,p(0)==0,p2(0)==1);
%pretty(Y(t))
%fplot(Y, [0 7]);

% 10
%zeta = 0.1;
%wn = 5;
%wd = wn*sqrt(1-zeta.^2);

%x = exp(-zeta*wn*t)*...
%(x(0)*cos(wd*t) + (zeta*wn*x(0) + subs(diff(x,t),t,0))*sin(wd*t)/wd);
%x = subs(x,subs(diff(x,t),t,0),0.2);
%x = subs(x,x(0),0);

%fplot(x,[0 8])
%hold on;

%ylim([-0.05 0.05]);
%ylabel('x(t)');
%xlabel('t');

%fplot((0.2/wn)*exp(-zeta*wn*t), [0 8], Color='k', LineStyle = '--');
%fplot((-0.2/wn)*exp(-zeta*wn*t), [0 8], Color='k', LineStyle = '--');

%hold off;

%11
%wn = 2;
%x = exp(-wn*t)*(x(0) + (wn*x(0) + subs(diff(x,t),t,0))*t);
%x = subs(x,x(0),0);

%for vel = [0.2 0.12 0.04]
%X = subs(x,subs(diff(x,t),t,0),vel);
%fplot(X,[0 4]);
%hold on;

%end

%hold off;

%ylim([0 0.04]);
%ylabel('x(t)');
%xlabel('t');
%legend('0.2m/s','0.12m/s','0.04m/s');

% 12
% wn = 2;
% zeta = 1.4;
% 
% s1 = -zeta*wn + wn*sqrt(zeta.^2-1);
% s2 = -zeta*wn - wn*sqrt(zeta.^2-1);
% 
% syms C1 C2;
% x(t) = C1*exp(s1*t) + C2*exp(s2*t);
% eq1 = x(0) == 0;
% 
% for vel = [0.2 0.12 0.04]
% eq2 = subs(diff(x,t),t,0) == vel;
% [A,B] = equationsToMatrix...
% ([eq1, eq2], [C1, C2]);
% 
% C = linsolve(A,B);
% X = subs(x,C1,C(1));
% X = subs(X,C2,C(2));
% fplot(X,[0 4]);
% 
% hold on;
% end
% hold off;
% 
% ylim([0 0.032]);
% ylabel('x(t)');
% xlabel('t');
% legend('0.2m/s','0.12m/s','0.04m/s');

% 13
wn = 5;
syms x(t);

xlinha_0 = subs(diff(x,t),t,0);

x(t) = x(0)*cos(wn*t) + xlinha_0*sin(wn*t)/wn;
x = subs(x,x(0),0);
x = subs(x,xlinha_0,0.2);

fplot(x,[0 4]);
ylim([-0.045 0.045]);
