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

w=input('Quantidade de Peso sobre a Viga [KN]: ');%------------seta para baixo na viga
Dist_a=input('Digite a distancia de R1 até a força aplicada [m]: ');
Dist_b=input('Digite a distancia de R2 até a força aplicada [m]: ');
w=w*10^3;
ComprimentoBarra=0:0.1:(Dist_a+Dist_b);
%SomatorioMomentos=0 --> -R1*(Dist_b+Dist_a) + w(peso)*Dist_b=0
R1=(w*Dist_b/(Dist_b+Dist_a));
R2=w-R1;% ou --> R2=(w*Dist_a/(Dist_b+Dist_a));
%-------------------------------------------------
x1=0:0.1:Dist_a; %0<x<30
v1=R1; %SomatorioEmY=0 --> R1-V=0 V=R1=7KN/m
m1=R1*x1;%SomaMomentos=0 -->-R1*X + M =0 --> M=R1*X
%--------------------------------------------------
x2=Dist_a:0.1:(Dist_a+Dist_b);%30<x<100
v2=-(w-R1); %R2=(w-R1)
m2=((R1*x2)-(w*(x2-Dist_a)));
%--------------------------------------------------
V3=-3000:100:7000;%linha vertica que une R1 e R2(valores)
x3=30;
%--------------------------------------------------
figure(1),
subplot(2,2,1); plot(x1,m1,'r',x2,m2,'g',ComprimentoBarra,0,'b');
axis([0,100,-100000,250000]);
grid;
%title('Graficos de Momento Fletor e Força Cortante');
xlabel('Distancia do ponto R1 [m]');
ylabel('Momento Fletor [N*m]');
%--------------------------------------------------
subplot(2,2,2); plot(x1,v1,'r',x2,v2,'r',x3,V3,'k',ComprimentoBarra,0,'b');
axis([0,100,-5000,9000]);
grid;
%title('Grafico Força Cortante x Distancia do ponto R1');
xlabel('Distancia do ponto R1 [m]');
ylabel('Força cortante [N]');
hold off




