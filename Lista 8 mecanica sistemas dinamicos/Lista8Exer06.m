%Lista de exercícios – Carregamento transversal
%Esboçar gráficos no Matlab de esforço cortante e momento fletor p/ os 
%carregamentos abaixo. (Lista 8 numero 6)
% Somatorio de Momento 5*R1-10(x-5)((x-5)/2)=0
clear all
close all
clc
disp('|*******************************************************|');
disp('|            Programa que Esboça gráficos de            |');
disp('|            esforço cortante e momento fletor          |');
disp('|*******************************************************|');
w1=input('Digite o peso sobre a barra [KN]: ');
Dist_Total=input('Digite o tamanho da barra [m]: ');
% Somatorio de Momento 5*R1-10(x-5)((x-5)/2)=0
x=0;
R1=-Dist_Total*x+25;        % Reação 1 em KN.

for x=0:0.01:Dist_Total,
    hold on
    M=(-Dist_Total*(x*x)+50*x) ;   % Momento Fletor em KN.m
    grid on
    subplot(2,2,1); plot(x,M,'g'), ylabel('Momento Fletor em KN.m'); 
    
end
hold off
% V = força cortante.
% Voltando ao cálculos iniciais tem que :

for x=0:0.01:Dist_Total,
    hold on
    V=(-10*(x-Dist_Total));     % esforço cortando em KN.
    grid on
  subplot(2,2,2);  plot(x,V,'m'), ylabel('Força Cortante em KN')
end
