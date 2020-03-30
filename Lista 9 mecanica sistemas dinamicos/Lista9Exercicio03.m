%3.Um elemento com as dimensões mostradas na figura deverá ser usado para 
% resistir a um momento fletor interno M = 2 [kN.m]. Determine a tensão 
% máxima no elemento se o momento for aplicado (a) em torno do eixo z e (b)
% em torno do eixo y. Trace um gráfico da distribuição de tensão em cada caso. 
% Refaça o item (a) variando os comprimentos dos lados da seção retangular
% (40 mm < b < 140 mm, 40 mm < h < 140 mm).
clear all
close all
clc
disp('|*******************************************************|');
disp('|  Determine a tensão máxima no elemento se o momento   |');
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
fprintf('Tensão máx Y:%0.2f MPa\n',Tmaxy);
fprintf('Tensão máx Z:%0.2f MPa\n',Tmaxz);
%--------------------------------------------------
figure(1),
[b,h] = meshgrid(40:1:140);
subplot(2,2,1); 
plot(Ity,Tmaxy,'r');
grid;
title('Distribuição de tensão em cada caso');
xlabel('Momento de Inercia');
ylabel('Tensão máxima');
%--------------------------------------------------
subplot(2,2,2);
plot(Itz,Tmaxz,'r');
grid;
%title('Distribuição de tensão em cada caso');
xlabel('Momento de Inercia');
ylabel('Tensão máxima');