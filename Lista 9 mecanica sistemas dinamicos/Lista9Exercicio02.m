%2. O elemento com seção transversal retangular (Figura 2) foi projetado para 
%resistir a um momento de 40 [N.m]. Para aumentar sua resistência e rigidez,
%foi proposta a adição de duas pequenas nervuras em sua parte inferior 
%(Figura 3). Determine a tensão normal máxima no elemento para ambos os casos. 
%No caso com as nervuras, a tensão máxima será função do parâmetro  ae deverá
%ser traçado um gráfico relacionando as duas variáveis. Por fim, responda:
%adição da nervura é vantajosa?
clear all
close all
clc
disp('|*******************************************************|');
disp('|            Programa que calcula Tensão Máxima         |');
disp('|                Sem Nervura e com Nervuras             |');
disp('|*******************************************************|');
fprintf('Resposta 02\n');
disp('---------------------------------------------');
fprintf('\tSem nervuras.\n');
b=0.06; % base em metro
h=0.03;% altura em metro 
%Ybarra=c=15mm
cm=0.015;%----------------------------------centro de massa em metro
It=(b*h^3)/12;%---------------------m^4
M=40;%---------------------------momento em N.M
Tmax=M*cm/It;
TmaxMPA=Tmax/10^6; %Tensão Maxima em MPA uma vez que as medidas estavam em [mm]
%fprintf('Momento de Inercia: %f m^4\n',It);
fprintf('\tTensão máx: %0.2f MPa\n',TmaxMPA);
disp('---------------------------------------------');

fprintf('\tCom nervuras:\n');
d=0.015;%distancia eixo X
a=0.010;
h2=0.005;
d2=0.0325;
cm=(d*h*b+2*d2*h2*a)/(b*h+2*h2*a);
c=0.035-cm;
Iret1=(b*h^3)/12+b*h*(cm-d)^2;
Iret2=(2*a*h2^3)/12+2*a*h2*(cm-d2)^2;
It=Iret1+Iret2;
Tmax=M*c/It;
TmaxMPA_Ranhuras=Tmax/10^6;
fprintf('\tTensão máx: %0.2f MPa\n',TmaxMPA_Ranhuras);
disp('---------------------------------------------');
disp('|*******************************************************|');
disp('| Esse resultado surprendente indica que o acréscimo de |');
disp('| nervuras à seção transversal aumenta a tensão normal  |');
disp('| em vez de diminuí-la e, por essa razão, a iniciativa  |');
disp('| deve ser descartada.                                  |');
disp('|*******************************************************|');
a=[0:0.001:0.020];
cm=(b*h*d+2*a*h2*d2)./(b*h+2*a*h2);
Iret3=(b*h^3)./12+b*h*(cm-d).^2;
Iret4=(h2^3)*2*a./12+(2.*a.*h2.*(cm-d2).^2);
It=Iret3+Iret4;
Tmax=M*cm./It;
TmaxMPA_Grafico=Tmax/10^6;
figure(1),
plot(a,TmaxMPA_Grafico);
%axis([0,TmaxMPA_Grafico,0,20])
title('Tensão Máxima em [MPA]');
xlabel('Distancia ao eixo X [m]');
ylabel('Tensão Máxima em [MPA]');
grid;


