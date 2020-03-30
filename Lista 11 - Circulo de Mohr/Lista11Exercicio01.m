%Lista 11 – Círculo de Mohr
%1) Para cada um dos estados de tensão abaixo, esboce o círculo de Mohr, 
%calcule as tensões principais e os ângulos.
clear all
close all
clc
disp('|*******************************************************|');
disp('|    Determine as tensões principais e os ângulos       |');
disp('|               esboce o círculo de Mohr                |');
disp('|*******************************************************|');
fprintf('Exercicio 1\n');
FiX=input('Digite o Fi de X: ');
FiY=input('Digite o Fi de Y: ');
TalXY=input('Digite o Tal de XY: ');
Fmedio=(FiX+FiY)/2;
RaioCirculo=sqrt(((FiX-FiY)/2)^2+(TalXY)^2);
%PontoA=(Fx,TalXY);
PontoA=cosd(FiX/RaioCirculo)

Fi1=Fmedio+RaioCirculo;
Fi2=Fmedio-RaioCirculo;
DoisTeta=atand((2*TalXY)/(FiX-FiY));
Teta=DoisTeta/2;

Angulo=0:0.1:2*pi;
x=RaioCirculo*cos(Angulo)+Fmedio;
y=RaioCirculo*sin(Angulo);
Ra=[0:0.01:RaioCirculo];
xa=Ra*cos(pi-30.9)+Fmedio;
ya=Ra*sin(pi-30.9);
figure,
plot(xa,ya,x,y);
title('Grafico de Mohr');
xlabel('Sigmas Máximo e Mínimo');
ylabel('TalXY');
grid;




