%Lista de exerc�cios � Carregamento transversal
%Esbo�ar gr�ficos no Matlab de esfor�o cortante e momento fletor p/ os 
%carregamentos abaixo. (Lista 8 numero 5)
clear all
close all
clc
disp('|*******************************************************|');
disp('|            Programa que Esbo�a gr�ficos de            |');
disp('|            esfor�o cortante e momento fletor          |');
disp('|*******************************************************|');

w1=input('Digite P1 sobre a Viga [KN]: ');%------------seta para baixo na viga
w2=input('Digite P2 sobre a Viga [KN]: ');%------------seta para baixo na viga
Dist_AC=input('Digite a distancia de R1 at� a P1 [m]: ');
Dist_CD=input('Digite a distancia de P1 at� a P2 [m]: ');
Dist_DB=input('Digite a distancia de P2 at� a R2 [m]: ');
%w1=w1*10^3;
%w2=w2*10^3;
Dist_Total=Dist_AC+Dist_CD+Dist_DB;
ComprimentoBarra=0:0.1:(Dist_Total+20);
R2=(w1*(Dist_AC+Dist_CD)+w2*Dist_DB)/Dist_Total; % Rea��o 1 em KN.
R1=w1+w2-R2;        % Rea��o 2 em KN.
V1=R1 ;     % esfor�o cortando em KN para 0<=x<10.
V2=R1-w1;     % esfor�o cortando em KN para 10<x<20.
V3=R1-(w1+w2);     % esfor�o cortando em KN para 20<x<40.

for x=0:0.1:Dist_AC-0.001,
    hold on
    M1=R1*x ;   % Momento Fletor em KN.m
    grid on
    subplot(2,2,1); plot(x,M1,'g'), ylabel('Momento Fletor em KN.m'); 
   end
for x=Dist_AC+0.001:0.1:Dist_AC+Dist_CD-0.001,
hold on
M2=R1*x-10*(x-10);    % Momento Fletor em KN.m
   grid on 
  plot(x,M2,'b')
end
for x=Dist_AC+Dist_CD-0.001:0.1:Dist_AC+Dist_CD+Dist_DB-0.001,
hold on
M3=R1*x-10*(x-10)-10*(x-20);    % Momento Fletor em KN.m
   grid on 
  plot(x,M3,'r')
end

hold off
% V = for�a cortante.
% Voltando ao c�lculos iniciais tem que :
for x=0:0.1:Dist_AC-0.01,
    hold on
    V=R1;   % esfor�o cortando em KN para 0<=x<10
    grid on
  subplot(2,2,2);  plot(x,V,'m'), ylabel('For�a Cortante em KN')
end
for x=Dist_AC+0.001:0.1:Dist_AC+Dist_CD-0.001,
    hold on
    V2=R1-w1 ;    % esfor�o cortando em KN para 10<x<20.
    grid on
  plot(x,V2,'b')
end

for x=Dist_AC+Dist_CD-0.001:0.1:Dist_Total-0.001,
    hold on
    V3= R1-(w1+w2); % esfor�o cortando em KN para 20<x<40.
    grid on
  plot(x,V3,'g')
end

for V4=V2:0.01:V, % For�a Cortante em KN para x=10.
    hold on
    x=10 ;   
    grid on
  plot(x,V4,'r')
end

for V5=V3:0.01:V2, % For�a Cortante em KN para x=20
    hold on
    x= 20; 
    grid on
  plot(x,V5,'r')
end

for V6=V3:0.01:0, % For�a Cortante em KN para x=40.
    hold on
    x= 40; 
    grid on
  plot(x,V6,'r')
end
for V7=0:0.01:V, % For�a Cortante em KN para x=40.
    hold on
    x= 0; 
    grid on
  plot(x,V7,'r')
end


