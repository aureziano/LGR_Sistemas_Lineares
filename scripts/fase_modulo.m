% Obter angulos para descobrir o LGR, para theta multiplo de 180°
s = 0.86 + 7.44j;
% s= s - (-0.406613378);
G = (1)/(s^3 +25*s^2 + 10*s);
theta1 = (180/pi)*angle(G);
M1 = abs(G);
K1= 1/M1;
s = -0.86 - 7.44j;
G = (1)/(s^3 +25*s^2 + 10*s);
theta2 = (180/pi)*angle(G);
M2 = abs(G);
K2= 1/M2;
s = -0.86 + 7.44j;
% s= s - (-0.406613378);
G = (1)/(s^3 +25*s^2 + 10*s);
theta3 = (180/pi)*angle(G);
M3 = abs(G);
K3= 1/M3;

s = -0.37 + 8.45j;
G = (1)/(s^3 +25*s^2 + 10*s);
theta4 = (180/pi)*angle(G);
M4 = abs(G);
K4= 1/M4;

s = 0.37 + .45j;
G = (1)/(s^3 +25*s^2 + 10*s);
theta = (180/pi)*angle(G);
M5 = abs(G);
K5= 1/M5;
