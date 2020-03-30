%2. A figura abaixo representa um eixo vazado com raios internos variando 
%entre 15 e 20 mm(incremento de 0.25 mm) e raios externos variando 
%entre 25 e 30 mm, com o mesmo incremento. Considerando G = 80 GPa, 
%traçar um gráfico no Matlab da variação dos diâmetros em função da rigidez 
%torcional do eixo.
clear all
close all
clc
disp('|*******************************************************|');
disp('|    Variação dos diâmetros em função da rigidez        |');
disp('|                torcional do eixo.                     |');
disp('|*******************************************************|');
l=1.4;
RI=0.015:0.00025:0.020;%raios Internos
RE=0.025:0.00025:0.030;%raios Externos
G=80e9;
J=((pi/32)*((2*RE).^4-(2*RI).^4));
Kt=((G*J)/l);
%hold on;
figure,plot(2*RI,Kt*1000,'g-',2*RE,Kt*1000,'r-');
title('Diametro Vs. K');
xlabel('Diametro [m]');
ylabel('k [N.m]');
legend('Diam.Interno','Diam. Externo');
grid on;