%Lista de exercícios – Deflexão em vigas e eixos
%1. A viga em balanço está sujeita a uma carga vertical P=30 [kN] em sua extremidade. A viga é
%feita de aço A-36 (E=200 [Gpa]) tem comprimento L=5 [m] e perfil W310x39 (I=84,4.106[mm4]). 
%Determine: 
%(a) a equação da linha elástica (traçar gráfico v(x) versus x); 
%(b) a inclinação ?A.
clear all
close all
clc
disp('|*******************************************************|');
disp('|  Determine a tensão máxima no elemento se o momento   |');
disp('|         for aplicado:  (a) em torno do eixo z         |');
disp('|                  e (b) em torno do eixo y             |');
disp('|*******************************************************|');
fprintf('Exercicio 1\n');
E=200e9;
I=84.4e-6;%passou para metros enão 6 porsitivos
P=30e3;
x=0:0.1:5;
M=-P.*x;
L=5;
%dv/dx=0 em x=L e v=0 em x=L
C1=(P*L^2)/2
C2=(-P*L^3)/3
TETA=P*L^2/(2*E*I)
V=((-P*L^3)/(3*E*I))
v=(P/(6*E*I))*(-x.^3+3*L^2*x-2*L^3);
figure, plot(x,0*x,'r-',x,v,'b:');
title('a tensão máxima no elemento');
xlabel('valores para x');
ylabel('valores para y');
grid;