%% Calculo K para que que passe nos pontos 's'
%FTMA = K/(s³+25s²+100s)
%A condição para que se passe no LGR é que o modulo de FTMA = 1
%Logo |K|=||M1|.|M2|.|M3|
s = -21.1764;
%G = (1)/(s^3 +25*s^2 + 10*s);
%theta1 = (180/pi)*angle(G);
M1 = abs(s);
%K1= 1/M1;

s = -1.9118 + 3.9212j;
% G = (1)/(s^3 +25*s^2 + 10*s);
%theta2 = (180/pi)*angle(G);
M2 = abs(s);
K2= 1/M2;

s = -1.9118 - 3.9212j;
%G = (1)/(s^3 +25*s^2 + 10*s);
%theta3 = (180/pi)*angle(G);
M3 = abs(s);
K3= 1/M3;

M=(M1*M2*M3);
