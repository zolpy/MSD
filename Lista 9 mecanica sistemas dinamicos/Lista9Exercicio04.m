%4. O pino é usado para interligar os três elos. Devido ao desgaste, a carga 
% é distribuída na parte superior e inferior do pino, como mostra o diagrama 
% de corpo livre. Se o diâmetro do pino for 10 mm, determine a tensão de flexão
% máxima na área da seção transversal na seção  a-a. Para resolver o problema, em primeiro
% lugar é necessário determinar as intensidades das cargas  w1 e w2.Refaça o problema 
% variando o diâmetro do pino (use alguns valores dentro de uma faixa de  ±50%
% do valor 10 mm) e mostre graficamente a variação da tensão máxima com o diâmetro do pino.
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
fprintf('A tensão maxima é: %0.2f\n',TensMaxima);
disp('-------------------------------------------------------');
diametroPino=5:15;
I=(1/4)*pi*(diametroPino).^4;
TensMaxima=M*diametroPino./I;
disp('-------------------------------------------------------');
figure(1),
plot(diametroPino,TensMaxima,'r-');
title('Distribuição de tensão');
xlabel('Diamentro do Pino');
ylabel('Tensão máxima');
grid;


