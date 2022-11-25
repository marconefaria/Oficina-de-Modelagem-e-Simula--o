% 1
% H1 = tf([0 1], [1 2]);
% H2 = tf([0 3], [1 4]);
% 
% series(H1, H2);
% parallel(H1, H2);
% feedback(H1, H2);
% feedback(H1, H2, +1);
% 
% H1.u = 'erro';
% H1.y = 'saida';
% H2.u = 'saida';
% H2.y = 'realimentacao';
% 
% sum = sumblk('erro = referencia - realimentacao');
% sys = connect(H1, H2, sum, 'referencia', 'saida');
% 
% tf(sys)

% 2
% num = [0 0 1];
% dem = [1 8 0];
% 
% G = tf(80 * num, dem);
% G = feedback(G, 1);
% step(G);
% hold on;
% 
% legend('K= 80');
% hold off;

% for K = [7 16 80]
%     G = tf(K * num, dem);
%     G = feedback(G, 1);
%     step(G);
%     hold on;
% end
% 
% legend('K= 7', 'K = 16', 'K = 80');
% hold off;

% num = [0 0 1];
% dem = [1 8 0 0];
% 
% G = tf(80 * num, dem)
% G = feedback(G, 1);
% step(G);
% hold on;
% 
% legend('K= 80');
% hold off;

% 3
syms G1 G2 G3 H1 H2;
syms F1 F2;

F1 = parallel(G1, H1);
F2 = feedback(G3 * G2, H2);

parallel(G3, F2)

