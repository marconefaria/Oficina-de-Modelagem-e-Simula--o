% Exercicio4
    % ESCOLHER A FUNÇÃO QUE QUER PLOTAR

    
% a
    num = [100 500];
    den = [1 10 100];
    
    Ga = tf(num, den);
    bode (Ga);

% b
    num = [-100 -500];
    den = [1 10 100];
    
    Gb = tf(num, den);
    %bode (Gb);


% c
    num = [25];
    den = [1 4 25];
    
    Gc = tf(num, den);
    %bode (Gc);

% d
    num = [9 1.8 9];
    den = [1 1.2 9 0];
    
    Gd = tf(num, den);
    %bode (Gd);

