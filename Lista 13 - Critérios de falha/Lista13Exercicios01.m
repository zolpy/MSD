%1. As componentes do estado plano de tens�o em um ponto cr�tico de uma
%carca�a de a�o estrutural A-36 s�o mostradas na figura ao lado. Determine se
%ocorreu falha (escoamento). Use os crit�rios de Tresca e Von Mises. Construa os
%gr�ficos (?1 x ?2), indique os limites das regi�es que garantem a aus�ncia de
%falha e coloque nesses gr�ficos as tens�es principais o ponto usado na an�lise.
clear all
close all
clc
disp('|*******************************************************|');
disp('|       Indique os limites das regi�es que garantem     |');
disp('|                a aus�ncia de  falha                   |');
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
        disp('N�o aceito pelo Criterio de Tresca');
    end
end

%Von Misses
if (((Fi1)^2-(Fi1*Fi2)+(Fi2)^2)<=(FiEA36)^2)
    disp('Aceito pelo Crit�rio de Von Misses');
else if (((Fi1)^2-(Fi1*Fi2)+(Fi2)^2)>=(FiEA36)^2)
        disp('N�o aceito pelo Crit�rio de Von Misses');
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




