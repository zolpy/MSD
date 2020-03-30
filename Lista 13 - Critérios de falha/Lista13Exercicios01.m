%1. As componentes do estado plano de tensão em um ponto crítico de uma
%carcaça de aço estrutural A-36 são mostradas na figura ao lado. Determine se
%ocorreu falha (escoamento). Use os critérios de Tresca e Von Mises. Construa os
%gráficos (?1 x ?2), indique os limites das regiões que garantem a ausência de
%falha e coloque nesses gráficos as tensões principais o ponto usado na análise.
clear all
close all
clc
disp('|*******************************************************|');
disp('|       Indique os limites das regiões que garantem     |');
disp('|                a ausência de  falha                   |');
disp('|*******************************************************|');

FiX=-75;
FiY=125;
TalXY=-80;
FiEA36=250;%MPa
Fi1=((FiX+FiY)/2)+sqrt(((FiX-FiY)/2)^2 + (TalXY)^2)
Fi2=((FiX+FiY)/2)-sqrt(((FiX-FiY)/2)^2 + (TalXY)^2)

clc
disp('|*******************************************************|');
disp('|                Inicio do detalhamento :               |');
disp('|*******************************************************|'); 
fprintf('FiX = %0.2f\n',FiX);
fprintf('FiY = %0.2f\n',FiY);
fprintf('TalXY = %0.2f\n',TalXY);
fprintf('Fi1 = %0.2f\n',Fi1);
fprintf('Fi2 = %0.2f\n\n',Fi2);
%criterio de tresca
if abs(Fi1-Fi2)<=FiEA36
    disp('Aceito pelo Criterio de Tresca');
else if abs(Fi1-Fi2)>=FiEA36
        disp('Não aceito pelo Criterio de Tresca');
    end
end

%Von Misses
if (((Fi1)^2-(Fi1*Fi2)+(Fi2)^2)<=(FiEA36)^2)
    disp('Aceito pelo Critério de Von Misses');
else if (((Fi1)^2-(Fi1*Fi2)+(Fi2)^2)>=(FiEA36)^2)
        disp('Não aceito pelo Critério de Von Misses');
    end
end

disp('|*******************************************************|');
disp('|                   Fim do detalhamento :               |');
disp('|*******************************************************|'); 
%FiX1=0:0.1:FiX;
%FiY1=0:0.1:FiY;
%TalXY1=0:0.1:TalXY;
Fi1=((FiX+FiY)/2)+sqrt(((FiX-FiY)/2)^2 + (TalXY)^2);
Fi2=((FiX+FiY)/2)-sqrt(((FiX-FiY)/2)^2 + (TalXY)^2);
figure, plot(Fi1,Fi2,'r')
title('Grafico de Fi1 x Fi2');
xlabel('Fi1');
ylabel('Fi2');
grid;




