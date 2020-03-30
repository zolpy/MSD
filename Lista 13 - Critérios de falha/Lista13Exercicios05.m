%5. O pequeno cilindro de concreto com di�metro de 50 mm est� sujeito a um 
%torque de 500 Nm e a uma for�a de compress�o axial de 2 kN. Determine se ele 
%falhar�. O limite de resist�ncia do concreto � sr = 28 MPa. 
clear all
close all
clc
disp('|*******************************************************|');
disp('|       Determine se o pequeno cilindro de concreto     |');
disp('|              com di�metro de 50 mm falhar�.           |');
disp('|*******************************************************|');
fprintf('\n\nExercicio 5: \n\n');

%FiX = input('Digite FiX (em MPa): ');%da tensao de cisalhamento em x (em MPa)
%Raio = input('Digite o raio do cilindro (em mm): ');
%Torque = input('Digite o torque (em N.m): ');%Torque realizado no cilindro
%Forca = input('Digite a For�a(em N): ');%for�a de compressao axial
%FiDeEscoamento = input('Digite Limite de Resistencia (em MPa): ');%o limite de resistencia do concreto

FiX = 0;%da tensao de cisalhamento em x (em MPa)
Raio = 50;
Torque = 500;%Torque realizado no cilindro
Forca = 2000;%for�a de compressao axial
FiDeEscoamento = 28;%o limite de resistencia do concreto


FiY = -Forca/(pi*Raio^2);  %ty � negativo porque esta recendo uma compressao
j = (pi*Raio^4)/2;
TalXY = 1000*Torque*Raio/j;

t = (FiX-FiY)/2;
a = (FiX+FiY)/2;
b = (t^2)+TalXY^2;
Fi1 = a + sqrt(b);
Fi2 = a - sqrt(b);
CriterioTresca = abs(Fi1 - Fi2);
VonMises = ((Fi1)^2 - (Fi1*Fi2) + (Fi2)^2);
TensaoVonMises = FiDeEscoamento^2;

clc
disp('|*******************************************************|');
disp('|                Inicio do detalhamento :               |');
disp('|*******************************************************|');
fprintf ('\nFiX: %.2f[Mpa]',FiX);
fprintf ('\nFiY: %.2f[Mpa]',FiY);
fprintf ('\nTalXY: %.2f[Mpa]',TalXY);
fprintf ('\nRaio: %.2f[mm]',Raio);
fprintf ('\nTorque: %.2f [N.mm]',Torque);
fprintf ('\nFor�a: %.2fN',Forca);
fprintf ('\nFi1: %.2f[Mpa]',Fi1);
fprintf ('\nFi2: %.2f[Mpa]',Fi2);
fprintf ('\nLimite Resistencia: %.2f',FiDeEscoamento);
fprintf ('\nJ: %.2f',j);
fprintf ('\nCriterio Tresca: %.2f',CriterioTresca);
fprintf ('\nCriterio Von Mises: %.2f',VonMises);
fprintf ('\nTensao Von Mises: %.2f\n',TensaoVonMises);


%------------------Crit�rio de escoamento de Tresca-----------------------%
negativo=abs(Fi1-Fi2);
if negativo <= FiDeEscoamento
    disp('----------------------------------------')
    disp('Pelo Crit�rio de escoamento de Tresca:')
    disp('--N�o ocorrer� falha--');
    fprintf('|fi1-fi2|: %.3f MPa <=%.3f MPa\n',negativo,FiDeEscoamento); 
    disp('----------------------------------------')
else
    disp('----------------------------------------')
    disp('Pelo Crit�rio de escoamento de Tresca:')
    disp('--Ocorrer� falha--');
    fprintf('|fi1-fi2|: %.3f MPa >=%.3f MPa\n\n',negativo,FiDeEscoamento); 
    disp('----------------------------------------')
end
%-------FIM DO TESTE DO Crit�rio de escoamento de Tresca------------------%

%----------------------Crit�rio de Von Mises------------------------------%
VonMises=((Fi1)^2-(Fi1*Fi2)+(Fi2)^2);
Quadrado_FiDeEscoamento=(FiDeEscoamento)^2;
if (VonMises <= Quadrado_FiDeEscoamento)
    disp('----------------------------------------')
    disp('Pelo Crit�rio de Von Mises:')
    disp('--N�o ocorrer� falha--');
    fprintf('[((fi1)^2-(fi1*fi2)+(fi2)^2)]: %.3f MPa<=%.3f MPa^2\n',VonMises,Quadrado_FiDeEscoamento);
    disp('----------------------------------------')
else
    disp('----------------------------------------')
    disp('Pelo Crit�rio de Von Mises:')
    disp('--Ocorrer� falha--');
    fprintf('[((fi1)^2-(fi1*fi2)+(fi2)^2)]: %.3f MPa>=%.3f MPa^2\n',VonMises,Quadrado_FiDeEscoamento);
    disp('----------------------------------------')
end
%-----------------FIM DO TESTE DO Crit�rio de Von Mises-------------------%

disp('|*******************************************************|');
disp('|                   Fim do detalhamento :               |');
disp('|*******************************************************|');



   


