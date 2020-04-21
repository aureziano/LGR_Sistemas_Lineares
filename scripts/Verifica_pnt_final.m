%%LGR verifar se ponto pertence a LGR
% Se soma dos angulos do ponto em relação aos pólos e zeros
% Soma dos anglos em relação aos pólos - Soma com relação aos zeros
% Salva em .txt 
p = [0 -4 -6 -30]; %polos
z = -5;%zeros na forma []
n_polos= length(p);
n_zeros = length(z);
dp(1:(n_polos))=0;
dz(1:(n_zeros))=0;
Mp(1:(n_polos))=0;
Mz(1:(n_zeros))=0;
ThetaP(1:(n_polos))=0;
ThetaZ(1:(n_zeros))=0;
Theta = 0;
s=-2.0574 +3.4070j;
fid=fopen('Verifica_Pnt_final.txt','w');
fprintf(fid,'p/z Polos/Zeros     Distancia      Modulo  Theta\r\n');
for n=1:n_polos
    dp(n)=s-p(n);
    Mp(n)=abs(dp(n));
    ThetaP(n) = (180/pi)*angle(dp(n));
    Theta = Theta + ThetaP(n);
    fprintf(fid,'p(%.0f) %.5f   %.4f+j%.4f    %.3f   %.3f°\r\n',n, p(n),real(dp(n)),imag(dp(n)),Mp(n),ThetaP(n));
    
end

for n=1:n_zeros
    dz(n)=s-z(n);
    Mz(n)=abs(dz(n));
    ThetaZ(n) = (180/pi)*angle(dz(n));
    Theta = Theta - ThetaZ(n);
    fprintf(fid,'z(%.0f) %.5f   %.4f+j%.4f    %.3f   %.3f°\r\n',n, z(n),real(dz(n)),imag(dz(n)),Mz(n),ThetaZ(n));
end

if round(Theta) == 180
    fprintf('\nPonto pertence a LGR!!!\n'); 
    fprintf(fid,'Ponto pertence a LGR!!!\r\n');
else
    fprintf('\nPonto NÃO pertence a LGR!!!\n'); 
    fprintf(fid,'Ponto pertence a LGR!!!\r\n');
end
fprintf(fid,'Angulo entre do ponto: %.2f°\r\n',Theta);
fclose(fid);
