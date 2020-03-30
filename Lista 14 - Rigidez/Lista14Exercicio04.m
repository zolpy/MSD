%4. Considerando a viga com as mesmas características dimensionais do exercício 3 e o
%mesmo valor de E, determinar sua rigidez , sabendo-se que a mesma encontra-se em
%balanço numa das extremidades. Observando os resultados gráficos (exercício 3 e 4), o que
%se pode concluir em relação à rigidez em ambas situações.
clear all
close all
clc
disp('|*******************************************************|');
disp('|     Concluir em relação à rigidez em ambas situações  |');
disp('|   Observando os resultados gráficos (exercício 3 e 4) |');
disp('|*******************************************************|');
base = 0.05:0.002:0.07;
altura = 0.095:-0.002:0.075;
E = 205000/(0.001^2); %módulo de elasticidade em N/m²
l = 70;
I = (base.*(altura.^3))/12;
k = (3*E*I)/l^3;
plot (base,k,'g',altura,k,'r')
xlabel ('Dimensões (m)')
title('Relação de rigidez');
ylabel ('k (N.m)')
legend ('base','altura')
grid on;
disp('|*******************************************************|');
disp('|     Ultima lista...oh lá em casa, Zolpy desligando!!! |');
disp('|*******************************************************|');