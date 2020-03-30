%Determinar o momento de inércia de área para cada seção plana abaixo 
% todas medidas estão em cm).
%Exercicio 1a)
clear all
close all
clc
disp('|*******************************************************|');
disp('|       Programa que calcula o momento de inercia       |');
disp('|         para cada seção plana (todas em [cm])         |');
disp('|*******************************************************|');
fprintf('Resposta 01\n');
fprintf('a)');
b1=15;%---------------------------------------------base de 1
h1=5;%------------------------------------------------altura de 1
%d1=5;%------------------------------------------------distancia ao eixo principal
Iret1=(b1*h1^3)/12;
b2=5;
h2=5;
d2=7.5;
Iret2=((b2*(h2^3))/12)+b2*h2*d2^2;
Iret3=Iret2;
It=Iret1+Iret2+Iret3;
fprintf('Momento de inércia: %0.2f\n',It);

fprintf('b)');
%separa a figura em duas partes e e coloca o eixo na base do T
%O tronco do T fica sendo a figura 1 e em cima a 2
b1=5;%-----------------------------------------------base
h1=10;%----------------------------------------------altura
d1=5;%-----------------------------------------------distancia até o eixo X
%-----------------------------------------------------Figura 2
b2=9;%-----------------------------------------------base
h2=2;%----------------------------------------------altura
d2=11;%-----------------------------------------------distancia até o eixo X
cm=(b1*h1*d1+b2*h2*d2)/(b1*h1+b2*h2);% calculando o centro de massa
Iret1=(b1*h1^3)/12+b1*h1*(cm-d1)^2;
Iret2=(b2*h2^3)/12+b2*h2*(cm-d2)^2;
It=Iret1+Iret2;
fprintf('Momento de inércia: %0.2f\n',It);

fprintf('c)');
b1=8;%-----------------------------------------------base
h1=3;%----------------------------------------------altura
d1=7.5;%--------------------------------------------distancia até o eixo X
b2=2;
h2=4;
d2=4;
b3=10;
h3=2;
d3=1;
cm=(b1*h1*d1+b2*h2*d2+b3*h3*d3)/(b1*h1+b2*h2+b3*h3);
Iret1=(b1*h1^3)/12+b1*h1*(cm-d1)^2;
Iret2=(b2*h2^3)/12+b2*h2*(cm-d2)^2;
Iret3=(b3*h3^3)/12+b3*h3*(cm-d3)^2;
It=Iret1+Iret2+Iret3;
fprintf('Momento de inércia: %0.2f\n',It);


