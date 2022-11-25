% % 1
% x0 = 10;
% x0 = 0.4;
% sim ( 'simu1 ' ,20) ;
% plot ( tout , yout (: ,1) )
% xlabel ( ' Tempo [s] ' )
% ylabel ( ' y(t) ' )

% % 2
% sim('simu2')
% figure(1)
% 
% plot ( tout , yout (:,1) )
% hold on
% plot(tout, yout (:,2))
% legend ('y', "y'")
% xlabel ( ' Tempo [s] ' )
% ylabel ( ' Sinal ' )
% hold off
% exportgraphics(gca, "questao2.jpg")
% 
% figure(2)
% plot ( yout(:,1) , yout (:,2) )
% xlabel ( ' y(t) ' )
% ylabel ( "y'(t)")
% exportgraphics (gca, "questao2b.jpg")

% 3
x0 = 0;
sim('simu3', 20)
plot(tout, yout)

