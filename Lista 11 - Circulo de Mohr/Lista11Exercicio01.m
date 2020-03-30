%Lista 11 � C�rculo de Mohr
%1) Para cada um dos estados de tens�o abaixo, esboce o c�rculo de Mohr, 
%calcule as tens�es principais e os �ngulos.
clear all
close all
clc
disp('|*******************************************************|');
disp('|    Determine as tens�es principais e os �ngulos       |');
disp('|               esboce o c�rculo de Mohr                |');
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
xlabel('Sigmas M�ximo e M�nimo');
ylabel('TalXY');
grid;




