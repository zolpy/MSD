%Lista de exerc�cios � Carregamento transversal
%Esbo�ar gr�ficos no Matlab de esfor�o cortante e momento fletor p/ os 
%carregamentos abaixo. (Lista 8 numero 6)
% Somatorio de Momento 5*R1-10(x-5)((x-5)/2)=0
clear all
close all
clc
disp('|*******************************************************|');
disp('|            Programa que Esbo�a gr�ficos de            |');
disp('|            esfor�o cortante e momento fletor          |');
disp('|*******************************************************|');
w1=input('Digite o peso sobre a barra [KN]: ');
Dist_Total=input('Digite o tamanho da barra [m]: ');
% Somatorio de Momento 5*R1-10(x-5)((x-5)/2)=0
x=0;
R1=-Dist_Total*x+25;        % Rea��o 1 em KN.

for x=0:0.01:Dist_Total,
    hold on
    M=(-Dist_Total*(x*x)+50*x) ;   % Momento Fletor em KN.m
    grid on
    subplot(2,2,1); plot(x,M,'g'), ylabel('Momento Fletor em KN.m'); 
    
end
hold off
% V = for�a cortante.
% Voltando ao c�lculos iniciais tem que :

for x=0:0.01:Dist_Total,
    hold on
    V=(-10*(x-Dist_Total));     % esfor�o cortando em KN.
    grid on
  subplot(2,2,2);  plot(x,V,'m'), ylabel('For�a Cortante em KN')
end
