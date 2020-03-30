%4. O pino � usado para interligar os tr�s elos. Devido ao desgaste, a carga 
% � distribu�da na parte superior e inferior do pino, como mostra o diagrama 
% de corpo livre. Se o di�metro do pino for 10 mm, determine a tens�o de flex�o
% m�xima na �rea da se��o transversal na se��o  a-a. Para resolver o problema, em primeiro
% lugar � necess�rio determinar as intensidades das cargas  w1 e w2.Refa�a o problema 
% variando o di�metro do pino (use alguns valores dentro de uma faixa de  �50%
% do valor 10 mm) e mostre graficamente a varia��o da tens�o m�xima com o di�metro do pino.
%1/2w2(25)=2000N -> W2=4000/25;
%w1(37.5)=4000
clear all
close all
clc
w1=106.67;
w2=160;
M=2000*(17.991582);
c=5;
I=(1/4)*pi*(c)^4
TensMaxima=M*c/I
fprintf('A tens�o maxima �: %0.2f\n',TensMaxima);
disp('-------------------------------------------------------');
diametroPino=5:15;
I=(1/4)*pi*(diametroPino).^4;
TensMaxima=M*diametroPino./I;
disp('-------------------------------------------------------');
figure(1),
plot(diametroPino,TensMaxima,'r-');
title('Distribui��o de tens�o');
xlabel('Diamentro do Pino');
ylabel('Tens�o m�xima');
grid;


