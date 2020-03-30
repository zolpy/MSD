%3. Determinar a rigidez � flex�o de uma viga bi-apoiada submetida a uma carga vertical
%concentrada com se��o transversal retangular (base variando entre 50 e 70 mm com
%incremento de 2 mm e altura variando entre 95 e 75 mm com um decremento de 2 mm. O
%gr�fico no Matlab deve mostrar a varia��o das 2 dimens�es em rela��o � rigidez da viga.
%Considerar E = 205.000 N/mm�.
clear all
close all
clc
disp('|*******************************************************|');
disp('|  Mostrar a varia��o das 2 dimens�es em rela��o �      |');
disp('|                 rigidez da viga.                      |');
disp('|*******************************************************|');
base=0.05:0.002:0.07;
altura=0.095:-0.002:0.075;
E=205000/(0.001^2); %m�dulo de elasticidade em N/m�% E = 205.000 N/mm�
l = 100;
I = (base.*(altura.^3))/12;
k = (3*E.*I*l)/((30^2)*(70^2));
plot (base,k,'g',altura,k,'r')
xlabel ('Dimens�es [m]')
ylabel ('k (N.m)')
legend ('base','altura')
grid on;