%2. A figura de um homem executando um salto em altura com vara permitiu estimar por
%medição que o raio de curvatura mínimo da vara é 4,5 [m]. Se a vara tiver 40 [mm] de
%diâmetro e for feita de plástico reforçado com fibra de vidro, determine a tensão de flexão
%máxima na vara. Ev = 131 [Gpa].
clear all
close all
clc
disp('|*******************************************************|');
disp('|            Determine a tensão máxima de               |');
disp('|               flexão máxima da vara                   |');
disp('|*******************************************************|');
fprintf('Exercicio 2\n');
%usando a relação 1/ro=M/EI
%Mas M=(I/c)*fi; --> I corta com I
DiametroBarra=0.04; %---------------------metros
ro=4.5;%-------------------------------altura da barra
E=131e9;%--------------------------------GigaPascal
c=DiametroBarra/2;
fi=((c/ro)*E);
fi_MPA=fi/1e6;
fprintf('A tensão de flexão máxima na vara é: %0.2f MPA\n\n',fi_MPA);
disp('-------------------GRAFICO---------------------------');
c=[0:0.01:40];
fi=((c./ro)*E);
fi_MPA=fi./1e6;
figure, plot(c,fi_MPA,'r-');
title(' Tensão de flexão máxima na vara');
xlabel('Diametro da Barra [mm]');
ylabel('Tensão [MPA]');
grid;