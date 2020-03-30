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
Dist_Total=input('Digite a distancia de R1 até a força aplicada [m]: ');
%Dist_b=input('Digite a distancia de R2 até a força aplicada [m]: ');
w=w*10^3;
ComprimentoBarra=0:0.1:(Dist_Total);
%SomatorioFY=0
%SomatorioMomentos=0 --> -R1*(Dist_b+Dist_a) + w(peso)*Dist_b=0
%R1=(-(w*Dist_Total));
R1=w;
R1=(-(w*Dist_Total));
%R2=w-R1;% ou --> R2=(w*Dist_a/(Dist_b+Dist_a));
%-------------------------------------------------
x1=0:0.1:Dist_Total; 
v1=R1-w; %SomatorioEmY=0 --> R1-V=0 V=R1=7KN/m
m1=w*x1;%SomaMomentos=0 -->-R1*X + M =0 --> M=R1*X
%--------------------------------------------------
for Y0=-10:0.01:0, % Força Cortante em KN para x=0.
    x=0 ;    
    subplot(2,2,1);
  plot(x,Y0,'b')
end

for Y2=-10:0.01:0, % Força Cortante em KN para x=70.
   x=70; 
   subplot(2,2,1);
  plot(x,Y2,'b')
end
%--------------------------------------------------
Dist_XPositivo=Dist_Total+10;
figure(1),
subplot(2,2,1);
plot(x1,v1,'r',ComprimentoBarra,0,'b');
axis([0,Dist_XPositivo,-900000,900000]);
grid;
%title('Grafico Força Cortante x Distancia do ponto R1');
xlabel('Distancia do ponto R1 [m]');
ylabel('Força cortante [N]');
%--------------------------------------------------
subplot(2,2,2);
plot(x1,m1,'r',ComprimentoBarra,0,'b');
axis([0,Dist_XPositivo,-50000,1000000]);
grid;
%title('Grafico Momento Fletor x Distancia do ponto R1');
xlabel('Distancia do ponto R1 [m]');
ylabel('Momento Fletor [N*m]');




