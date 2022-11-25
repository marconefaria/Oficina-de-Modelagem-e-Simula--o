% 1
% syms x;
% 
% tfinal = 10;
% x0 = [2];
% [tout, xout] = ode45(@(t,x)func1(t,x), [0 tfinal], x0);
% plot(tout,xout)
% xlabel ( ' Tempo [s] ' )
% ylabel ( ' Derivada de X' )
% legend("X0 = 2")
% 
% tfinal = 10;
% x0 = [8];
% [tout, xout] = ode45(@(t,x)func1(t,x), [0 tfinal], x0);
% plot(tout,xout)
% xlabel ( ' Tempo [s] ' )
% ylabel ( ' Derivada de X' )
% legend("X0 = 2")
% 
% function f = func1(t,x)
%   f = [diff(x) (x^3)];
% end

% 2
% syms x1 x2 x10 x20 t;
% [x1'; x2'] = [x2; 8*cos(0.5*t) - 0.02*x(2) - x(1) - 5*(x(1).^3)]
% [x1(0); x2(0)] = [0; 0]

% tfinal = 200;
% x0 = [0, 0]
% [tout, xout] = ode45(@(t,x)func2(t,x), [0 tfinal], x0);
% plot(tout, xout)
% xlabel ( ' Tempo [s] ' )
% ylabel ( ' Derivada de Y e Derviada de d(Y)')
% legend('Y', '$\dot{Y}$', 'Interpreter','latex', fontsize=18)

% tfinal = 200;
% x0 = [0, 0]
% options2 = odeset('OutputFcn',@odephas2);
% [tout, xout] = ode45(@(t,x)func2(t,x), [0 tfinal], x0, options2);

% % 3
% % [x1'; x2';] = [x2; (3*heaviside(t) - k*x(1) - c*x(2))/m;]
% % [x1(0); x2(0)] = [0; 0]
% 
% tfinal = 20;
% x0 = [0; 0];
% m = 3;
% c = 1;
% k = 10;
% [tout, xout] = ode45(@(t,x)func3(t, x, m, c, k), [0 tfinal], x0);
% plot(tout, xout)
% legend('Y', '$\dot{Y}$', 'Interpreter','latex', fontsize=18)
% 
% tfinal = 20;
% x0 = [0; 0];
% m = 3;
% c = 5;
% k = 10;
% [tout, xout] = ode45(@(t,x)func3(t, x, m, c, k), [0 tfinal], x0);
% plot(tout, xout)
% legend('Y', '$\dot{Y}$', 'Interpreter','latex', fontsize=18)
% 
% tfinal = 20;
% x0 = [0; 0];
% m = 3;
% c = 10;
% k = 10;
% [tout, xout] = ode45(@(t,x)func3(t, x, m, c, k), [0 tfinal], x0);
% plot(tout, xout)
% legend('Y', '$\dot{Y}$', 'Interpreter','latex', fontsize=18)
% 
% tfinal = 20;
% x0 = [0; 0];
% m = 3;
% c = 1;
% k = 5;
% [tout, xout] = ode45(@(t,x)func3(t, x, m, c, k), [0 tfinal], x0);
% plot(tout, xout)
% legend('Y', '$\dot{Y}$', 'Interpreter','latex', fontsize=18)
% 
% tfinal = 20;
% x0 = [0; 0];
% m = 3;
% c = 1;
% k = 15;
% [tout, xout] = ode45(@(t,x)func3(t, x, m, c, k), [0 tfinal], x0);
% plot(tout, xout)
% legend('Y', '$\dot{Y}$', 'Interpreter','latex', fontsize=18)


