%3. Determinar a rigidez à flexão de uma viga bi-apoiada submetida a uma carga vertical
%concentrada com seção transversal retangular (base variando entre 50 e 70 mm com
%incremento de 2 mm e altura variando entre 95 e 75 mm com um decremento de 2 mm. O
%gráfico no Matlab deve mostrar a variação das 2 dimensões em relação à rigidez da viga.
%Considerar E = 205.000 N/mm².
clear all
close all
clc
disp('|*******************************************************|');
disp('|  Mostrar a variação das 2 dimensões em relação à      |');
disp('|                 rigidez da viga.                      |');
disp('|*******************************************************|');
base=0.05:0.002:0.07;
altura=0.095:-0.002:0.075;
E=205000/(0.001^2); %módulo de elasticidade em N/m²% E = 205.000 N/mm²
l = 100;
I = (base.*(altura.^3))/12;
k = (3*E.*I*l)/((30^2)*(70^2));
plot (base,k,'g',altura,k,'r')
xlabel ('Dimensões [m]')
ylabel ('k (N.m)')
legend ('base','altura')
grid on;