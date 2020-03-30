% Lista 12 de exerc�cios � Estado plano de deforma��es.
%3. Foi instalada uma roseta retangular na superf�cie de uma pe�a de a�o, conforme figura
% abaixo. Foram medidas as deforma��es EpsonA = 80?; EpsonB = 100? e EpsonC = 120? decorrentes da
% for�a F aplicada na alavanca. Determinar as deforma��es espec�ficas principais na regi�o
% onde a roseta foi instalada.
clear all
close all
clc
disp('|*******************************************************|');
disp('|             Estado plano de deforma��es.              |');
disp('|               Esboce o c�rculo de Mohr                |');
disp('|*******************************************************|');
fprintf('Exercicio 3\n');
EpsonA=120;
EpsonB=80;
EpsonC=-100;

AnguloA=0;
AnguloB=90;
AnguloC=225;

%Matriz (E)
E(1,1)=[EpsonA]; 
E(2,1)=[EpsonB]; 
E(3,1)=[EpsonC]; 

%Matriz (A)
A(1,1)=[(cosd(AnguloA))^2]; 
A(1,2)=[(sind(AnguloA))^2]; 
A(1,3)=[sind(AnguloA)*cosd(AnguloA)]; 

A(2,1)=[(cosd(AnguloB))^2]; 
A(2,2)=[(sind(AnguloB))^2]; 
A(2,3)=[sind(AnguloB)*cosd(AnguloB)]; 

A(3,1)=[(cosd(AnguloC))^2]; 
A(3,2)=[(sind(AnguloC))^2]; 
A(3,3)=[sind(AnguloC)*cosd(AnguloC)]; 


B=inv(A)*E; 

FiX=B(1,1); 
FiY=B(2,1); 
TalXY=B(3,1); 

RaioCirculo=sqrt((((FiX-FiY)/2)^2)+((TalXY/2)^2)); 

FiMedio= ((FiX+FiY)/2); 

Fi1=FiMedio+RaioCirculo; 
Fi2=FiMedio-RaioCirculo; 

TetaParte1= (RaioCirculo^2 - ((FiX-FiMedio)^2)); %
if FiMedio > FiX
    TetaParte2=(FiMedio-FiX); 
else if FiX > FiMedio
        TetaParte2=(FiX-FiMedio); 
    end
end
TetaParte3=sqrt(TetaParte1); 
DoisTeta= (atand(TetaParte3/TetaParte2)); 

clc
disp('|*******************************************************|');
disp('|             Os Valores Digitados foram:               |');
disp('|*******************************************************|');
fprintf('Deforma��o Epson A = %.2f M�crons\n',EpsonA); 
fprintf('Deforma��o Epson B = %.2f M�crons\n',EpsonB); 
fprintf('Deforma��o Epson C = %.2f M�crons\n',EpsonC); 
fprintf('�ngulo A = %.2f � graus\n',AnguloA); 
fprintf('�ngulo B = %.2f � graus\n',AnguloB); 
fprintf('�ngulo C = %.2f � graus\n',AnguloC); 
disp('|*******************************************************|');
disp('|             Os valores encontrados s�o :              |');
disp('|*******************************************************|');           
fprintf('Deforma��o normal FiX = %.2f M�crons\n',FiX); 
fprintf('Deforma��o normal FiY = %.2f M�crons\n',FiY); 
fprintf('Deforma��o por cisalhamento TalXY = %.3f M�crons\n',TalXY); 
fprintf('Raio do Circulo = %.0f\n',RaioCirculo);   
fprintf('Deforma��o principal Fi1 = %.2f M�crons\n',Fi1);  
fprintf('Deforma��o principal Fi2 = %.2f M�crons\n',Fi2);  
fprintf('Orienta��o DoisTeta = %.2f � graus\n',DoisTeta);  
disp('|*******************************************************|');
disp('|             Fim do detalhamento :                     |');
disp('|*******************************************************|');     

AnguloGrafico=0:0.1:2*pi;
x=RaioCirculo*cos(AnguloGrafico)+ FiMedio; 
y=RaioCirculo*sin(AnguloGrafico); 
%axis([-70 100,-80 80])
plot (x,0*x,'k',y,0*y,'k',x,y,'r',[FiX,FiMedio],[TalXY/2,0]);  
grid on ; 
%gtext('Texto para anota��o'); % texto posicionado na tela pelo mouse
if AnguloC < 180
    set(gca,'ydir','reverse');
else fprintf(' ');
end
xlabel('Deforma��o especifica') ; 
ylabel('Deforma��o Cisalhante'); 
title('C�rculo de Mohr');
text(Fi1,0,'Fi1');
text(Fi2,0,'Fi2');
text(FiMedio,0,'Centro');


