%4. Considerando a viga com as mesmas caracter�sticas dimensionais do exerc�cio 3 e o
%mesmo valor de E, determinar sua rigidez , sabendo-se que a mesma encontra-se em
%balan�o numa das extremidades. Observando os resultados gr�ficos (exerc�cio 3 e 4), o que
%se pode concluir em rela��o � rigidez em ambas situa��es.
clear all
close all
clc
disp('|*******************************************************|');
disp('|     Concluir em rela��o � rigidez em ambas situa��es  |');
disp('|   Observando os resultados gr�ficos (exerc�cio 3 e 4) |');
disp('|*******************************************************|');
base = 0.05:0.002:0.07;
altura = 0.095:-0.002:0.075;
E = 205000/(0.001^2); %m�dulo de elasticidade em N/m�
l = 70;
I = (base.*(altura.^3))/12;
k = (3*E*I)/l^3;
plot (base,k,'g',altura,k,'r')
xlabel ('Dimens�es (m)')
title('Rela��o de rigidez');
ylabel ('k (N.m)')
legend ('base','altura')
grid on;
disp('|*******************************************************|');
disp('|     Ultima lista...oh l� em casa, Zolpy desligando!!! |');
disp('|*******************************************************|');