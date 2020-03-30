%Lista de exercícios – Carregamento transversal
%Esboçar gráficos no Matlab de esforço cortante e momento fletor p/ os 
%carregamentos abaixo. (Lista 8 numero 3)
clear all
close all
clc
disp('|*******************************************************|');
disp('|            Programa que Esboça gráficos de            |');
disp('|            esforço cortante e momento fletor          |');
disp('|*******************************************************|');

w1=input('Digite F1 sobre a Viga [KN]: ');%------------seta para baixo na viga
w2=input('Digite F2 sobre a Viga [KN]: ');%------------seta para baixo na viga
Dist_AD=input('Digite a distancia de R1 até a F1 [m]: ');
Dist_DC=input('Digite a distancia de F1 até a F2 [m]: ');
Dist_CB=input('Digite a distancia de F2 até a R2 [m]: ');
%w1=w1*10^3;
%w2=w2*10^3;
Dist_Total=Dist_AD+Dist_DC+Dist_CB;
%ComprimentoBarra=0:0.1:(Dist_Total);
%SomatorioEmY=0 ->R1+R2-P1-P2=0 ->R1+R2=P1+P2 -> R1+R2= 20KN +30KN R1+R2=50
%SomatorrioMomentos=0 -> -R1*Dist_Total+W1*(Dist_DC+Dist_CB)+%W2*(Dist_CB)=0
R2=(20*Dist_AD+30*Dist_CB)/Dist_Total; % Reação 1 em KN.
R1=w1+w2-R2;        % Reação 1 em KN.
V1=R1 ;             % esforço cortando em KN para 0<=x<1.
V2=R1-w1;           % esforço cortando em KN para 1<x<2.5.
V3=R1-(w1+w2);      % esforço cortando em KN para 2.5<x<5.


for x=0:0.01:0.999,
    hold on
    M1=R1*x ;               % Momento Fletor em KN.m
    grid on
    subplot(2,2,1); plot(x,M1,'g'), ylabel('Momento Fletor em KN.m'); 
end
for x=1.001:0.01:2.499,
hold on
M2=R1*x-w1*(x-Dist_AD);     % Momento Fletor em KN.m
   grid on 
  plot(x,M2,'b')
end
for x=2.5001:0.01:4.999,
hold on
M3=R1*x-w1*(x-Dist_AD)-w2*(x-Dist_CB);    % Momento Fletor em KN.m
   grid on 
  plot(x,M3,'r')
end
hold off

for x=0:0.01:Dist_AD-0.01,
    hold on
    V=R1;   % esforço cortando em KN para 0<=x<1
    grid on
  subplot(2,2,2);  plot(x,V,'m'), ylabel('Força Cortante em KN')
end
for x=Dist_AD+0.02:0.01:Dist_AD+Dist_DC-0.001,
    hold on
    V2=R1-w1 ;    % esforço cortando em KN para 1<x<2.5.
    grid on
  plot(x,V2,'b')
end

for x=Dist_AD+Dist_DC+0.002:0.01:Dist_AD+Dist_DC+Dist_CB-0.01,
    hold on
    V3= R1-(w1+w2); % esforço cortando em KN para 2.5<x<5.
    grid on
  plot(x,V3,'g')
end

for V4=11:0.01:31, % Força Cortante em KN para x=1.
    hold on
    x=Dist_AD ;   
    grid on
  plot(x,V4,'k')
end

for V5=-19:0.01:11, % Força Cortante em KN para x=2.5
    hold on
    x= Dist_CB; 
    grid on
  plot(x,V5,'k')
end

for V6=-19:0.01:0, % Força Cortante em KN para x=5.
    hold on
    x= Dist_Total; 
    grid on
  plot(x,V6,'k')
end

