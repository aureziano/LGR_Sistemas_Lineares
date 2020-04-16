% G= ft([k 3*k],[1 7 14 8+k 3*k]);
% r = routh_t(G,k);
% disp(r);
K=1:0.001:5000; % Define a faixa para K de 1 a 2000
 % em incrementos de 1.
for n=1:length(K) % Ajusta a dura��o do LA�O para ser
     % igual ao n�mero de valores de K a
    % serem testados.
    dent=[1 7 14 8+K(n) 3*K(n)];
    % Define o denominador de T(s) para
    % o en�simo valor de K.
    polos=roots(dent);
     % Obt�m os polos para o en�simo
     % valor de K.
    r=real(polos);
     % Cria um vetor contendo as partes
    % reais dos polos para K(n).
    if max(r)>=0
        K=K(n);
        p=roots(dent); 
        disp(p);
        plot(real(p),imag(p),'X'),grid;
        xlabel('Eixo Real'),ylabel('Eixo Imagin�rio');
    % Exibe o valor correspondente de K.
        break;
    % Para o la�o se polos no spd s�o
    % encontrados.
    % Final do if.
    end % Final do for.
end