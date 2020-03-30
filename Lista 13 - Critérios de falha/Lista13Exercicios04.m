%4. O eixo maciço de ferro fundido mostrado na Figura X está sujeito a uma torque T=400 N.m.
%Determine o menor raio que garante que o eixo não falhe. O limite de resistência de um corpo de
%prova de ferro fundido determinado por um ensaio de tração é (sr)t = 150 MPa. Mostre graficamente
%qual é a região dentro da qual devem estar as tensões principais e coloque nesse mesmo gráfico o
%ponto que representa o estado plano de tensão quando é adotado o eixo com o raio projetado.
clear all
close all
clc
disp('|*******************************************************|');
disp('|         Determine o menor raio que garante que o      |');
disp('|            eixo não falhe. Mostre graficamente        |');
disp('|*******************************************************|');
fprintf('\n\nExercicio 4: \n\n');
FiX = 0; %tensao de cisalhamento em x (em MPa)
FiY = 0; %tensao de cisalhamento em y (em MPa)
FiEscoamento = 150; %a tensao de escoamento do ferro fundido (em MPa)
Torque = 400; %torque realizado no eixo maciço (em N.m
TalXYSemRaio =  (2*Torque*1000)/pi ; %talxy sem o raio em N.mm

t = (FiX-FiY)/2;
a = (FiX+FiY)/2;
b = (t^2)+TalXYSemRaio^2;
Fi1 = a + sqrt(b);
Fi2 = a - sqrt(b);
tmax = (-Fi2);

VonMisses = ((Fi1)^2 - (Fi1*Fi2) + (Fi2)^2);
TenNonMisses = FiEscoamento^2;
RVonMisses = (VonMisses/TenNonMisses)^(1/6);

Tresca = abs(Fi1 - Fi2);
RaioA = (Tresca/FiEscoamento)^(1/3);
RaioB = (Tresca/FiEscoamento)^(1/3);
RaioC = (Fi1/FiEscoamento)^(1/3);
RaioD = (tmax/FiEscoamento)^(1/3);

clc
disp('|*******************************************************|');
disp('|                Inicio do detalhamento :               |');
disp('|*******************************************************|'); 
fprintf ('\nFiX: %.2f[Mpa]',FiX);
fprintf ('\nFiY: %.2f[Mpa]',FiY);
fprintf ('\nFiEscoamento: %.2f[Mpa]',FiEscoamento);
fprintf ('\nTorque: %.2f [N.mm]',Torque);
fprintf ('\nTalXYSemRaio: %.2f',TalXYSemRaio);
fprintf ('\nFi1: %.2f[Mpa]',Fi1);
fprintf ('\nFi2: %.2f[Mpa]',Fi2);
fprintf ('\nVonMisses: %.2f',VonMisses);
fprintf ('\nRVonMisses: %.2f',RVonMisses);
fprintf ('\nTresca: %.2f',Tresca);
fprintf ('\nRaioA: %.2f[mm]',RaioA);
fprintf ('\nRaioB: %.2f[mm]',RaioB);
fprintf ('\nRaioC: %.2f[mm]',RaioC);
fprintf ('\nRaioD: %.2f[mm]',RaioD);

%criterio de escoamento de Tresca
fprintf ('\n\nCritério de escoamento de Tresca:\n');
if Fi1 <= 0 && Fi2 >= 0
    fprintf('O menor raio pelo criterio de Tresca é: %.2f[mm]', RaioA);
elseif Fi1 >= 0 && Fi2 <= 0
    fprintf('O menor raio pelo criterio de Tresca é: %.2f[mm]', RaioB);
elseif Fi1 > 0 && Fi2 > 0
   fprintf('O menor raio pelo criterio de Tresca é: %.2f[mm]', RaioC);
else 
   fprintf('O menor raio pelo criterio de Tresca é: %.2f[mm]', RaioD);
end

%criterio de Von Mises
fprintf ('\n\nCritério de Von Mises: ');
fprintf ('\nO menor raio pelo criterio de Von Mises é: %.2f[mm]\n', RVonMisses);
disp('|*******************************************************|');
disp('|                   Fim do detalhamento :               |');
disp('|*******************************************************|'); 



