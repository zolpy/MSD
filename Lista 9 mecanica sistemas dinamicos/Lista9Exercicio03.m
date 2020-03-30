%3.Um elemento com as dimens�es mostradas na figura dever� ser usado para 
% resistir a um momento fletor interno M = 2 [kN.m]. Determine a tens�o 
% m�xima no elemento se o momento for aplicado (a) em torno do eixo z e (b)
% em torno do eixo y. Trace um gr�fico da distribui��o de tens�o em cada caso. 
% Refa�a o item (a) variando os comprimentos dos lados da se��o retangular
% (40 mm < b < 140 mm, 40 mm < h < 140 mm).
clear all
close all
clc
disp('|*******************************************************|');
disp('|  Determine a tens�o m�xima no elemento se o momento   |');
disp('|         for aplicado:  (a) em torno do eixo z         |');
disp('|                  e (b) em torno do eixo y             |');
disp('|*******************************************************|');
fprintf('Exercicio 3\n');
b=60;
h=120;
M=2e6;
Ity=(b*h^3)./12;
Itz=(h*b^3)./12;
ymax=h/2;
zmax=b/2;
sigmaz=(M*zmax./Itz); %antes tava  ymax
sigmay=(M*ymax./Ity);
Tmaxy=(M*h/2)./Ity
Tmaxz=(M*b/2)./Itz
fprintf('Tens�o m�x Y:%0.2f MPa\n',Tmaxy);
fprintf('Tens�o m�x Z:%0.2f MPa\n',Tmaxz);
%--------------------------------------------------
figure(1),
[b,h] = meshgrid(40:1:140);
subplot(2,2,1); 
plot(Ity,Tmaxy,'r');
grid;
title('Distribui��o de tens�o em cada caso');
xlabel('Momento de Inercia');
ylabel('Tens�o m�xima');
%--------------------------------------------------
subplot(2,2,2);
plot(Itz,Tmaxz,'r');
grid;
%title('Distribui��o de tens�o em cada caso');
xlabel('Momento de Inercia');
ylabel('Tens�o m�xima');