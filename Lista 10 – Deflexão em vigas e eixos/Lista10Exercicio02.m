%2. A figura de um homem executando um salto em altura com vara permitiu estimar por
%medi��o que o raio de curvatura m�nimo da vara � 4,5 [m]. Se a vara tiver 40 [mm] de
%di�metro e for feita de pl�stico refor�ado com fibra de vidro, determine a tens�o de flex�o
%m�xima na vara. Ev = 131 [Gpa].
clear all
close all
clc
disp('|*******************************************************|');
disp('|            Determine a tens�o m�xima de               |');
disp('|               flex�o m�xima da vara                   |');
disp('|*******************************************************|');
fprintf('Exercicio 2\n');
%usando a rela��o 1/ro=M/EI
%Mas M=(I/c)*fi; --> I corta com I
DiametroBarra=0.04; %---------------------metros
ro=4.5;%-------------------------------altura da barra
E=131e9;%--------------------------------GigaPascal
c=DiametroBarra/2;
fi=((c/ro)*E);
fi_MPA=fi/1e6;
fprintf('A tens�o de flex�o m�xima na vara �: %0.2f MPA\n\n',fi_MPA);
disp('-------------------GRAFICO---------------------------');
c=[0:0.01:40];
fi=((c./ro)*E);
fi_MPA=fi./1e6;
figure, plot(c,fi_MPA,'r-');
title(' Tens�o de flex�o m�xima na vara');
xlabel('Diametro da Barra [mm]');
ylabel('Tens�o [MPA]');
grid;