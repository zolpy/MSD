%Lista de exercícios – Carregamento transversal
%Esboçar gráficos no Matlab de esforço cortante e momento fletor p/ os 
%carregamentos abaixo. (Lista 8 numero 4)
clear all
close all
clc
disp('|*******************************************************|');
disp('|            Programa que Esboça gráficos de            |');
disp('|            esforço cortante e momento fletor          |');
disp('|*******************************************************|');
w=input('Quantidade de Peso sobre a Viga [KN/m]: ');%------------conjunto de setas para baixo na viga
L=input('Digite o comprimento da viga [m]: ');%------------------Comprimento da Viga
%Dist_R2=input('Digite a distancia de R2 até a força aplicada [m]');
PesoDistribuido=w*10^3;
ComprimentoBarra=0:0.1:(L);
PesoUnico=PesoDistribuido*(L); %-------------------------uma unica seta no centro de gravidade CG
R1=PesoUnico/2;%-----------------------------------------Dois pontos de apoio
R2=R1;%--------------------------------------------------Como a seta está no centroide divide ao meio
v=PesoDistribuido*((L/2)-ComprimentoBarra);%-------------Força cortante
%v=R1-(Peso*ComprimentoBarra);
%m=R1*ComprimentoBarra-(Peso1*ComprimentoBarra.*ComprimentoBarra/2);
m=((PesoDistribuido/2)*(L*ComprimentoBarra-ComprimentoBarra.^2));
%-------------------------------------------------------------------------%
 V5=0:0.01:108; % Força Cortante em KN para x=0
    hold on
    x5= 0; 
    grid on
  %plot(x5,V5,'k')

 V6=-108:0.01:0; % Força Cortante em KN para x=36.
    hold on
    x6= 36; 
    grid on
 % plot(x6,V6,'k')

%-------------------------GRAFICO FORÇA CORTANTE--------------------------%
figure(1),
subplot(2,2,1);
plot(ComprimentoBarra,v,'r');
%title('Força cortante x Distancia do engaste');
xlabel('Distancia do engaste (m)');
ylabel('Força Cortante (N)');
grid;
%-----------------------GRAFICO MOMENTO FLETOR----------------------------%
subplot(2,2,2);
plot(ComprimentoBarra,m,'r');
%title('Momento Fletor x Distancia do engaste');
xlabel('Distancia do engaste [m]');
ylabel('Momento Fletor [N*m]');
grid;
