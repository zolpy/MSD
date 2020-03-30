%Lista de exerc�cios � RIGIDEZ MEC�NICA
%1. Determinar graficamente a rigidez � tor��o do eixo maci�o, conforme figura a seguir, 
%ao aplicar um mesmo torque T para diferentes materiais com G variando entre 70 e 210 GPa
%com incremento de 5 GPa.
disp('|*******************************************************|');
disp('|  Determinar graficamente a rigidez � tor��o do eixo   |');
disp('|  maci�o Indique os limites das regi�es que garantem   |');
disp('|*******************************************************|');
clear all
close all
clc
l=0.1;
Diametro=0.025;
J=((pi*Diametro^4)/32);
G=70e9:5e9:210e9;
Kt=(G.*J)/l;

figure,plot(G,Kt,'r-');
title('Material Vs. K');
xlabel('G[GPa]');
ylabel('K[N.m]');
grid on;

