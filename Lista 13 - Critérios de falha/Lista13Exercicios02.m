%2. Uma liga de alumínio 6061-T6 deve ser usada para fabricar um eixo de acionamento maciço que
%transmita 33 kW a 2400 rpm. Usando um fator de segurança 2 para o escoamento, determine o
%menor diâmetro do eixo. 
clear all
close all
clc
disp('|*******************************************************|');
disp('|             Determine o menor diâmetro do eixo        |');
disp('|                 Uma liga de alumínio 6061-T6          |');
disp('|*******************************************************|');
fprintf('Exercicio 2.)\n\n');
FiX = input ('Digite FiX: '); %tensao de cisalhamento em x
FiY = input ('Digite FiY: '); %tensao de cisalhamento em y
FiEscoamento = input ('Digite FiEscoamento do alumínio 6061-T6: '); %a tensao de escoamento do alumínio 6061-T6
Potencia = input ('Digite Potencia: '); %a pontencia que o eixo deve transmitir
FatorSeguranca = input ('Digite FatorSeguranca: ');%o fator de segurança
Rotacao = input('Digite a rotação: ');

TensaoEscoamento = FiEscoamento/FatorSeguranca;
Torque = (1000*60*Potencia)/(2*pi*Rotacao); %torque em N.mm
TalXYr =  (2*Torque)/pi;  %talxy sem o raio

t = (FiX-FiY)/2;
a = (FiX+FiY)/2;
b = (t^2)+TalXYr^2;
Fi1 = a + sqrt(b);
Fi2 = a - sqrt(b);
tmax = (-Fi2);

VonMisses = ((Fi1)^2 - (Fi1*Fi2) + (Fi2)^2);
TenVonMisses = TensaoEscoamento^2;
RVonMisses = (VonMisses/TenVonMisses)^(1/6);

CritTresca = abs(Fi1 - Fi2);
RaioA = (CritTresca/TensaoEscoamento)^(1/3);
RaioB = (CritTresca/TensaoEscoamento)^(1/3);
RaioC = (Fi1/TensaoEscoamento)^(1/3);
RaioD = (tmax/TensaoEscoamento)^(1/3);
clc
disp('|*******************************************************|');
disp('|                Inicio do detalhamento :               |');
disp('|*******************************************************|'); 
fprintf ('\nRaioA: %.2f[mm]',RaioA);
fprintf ('\nRaioB: %.2f[mm]',RaioB);
fprintf ('\nRaioC: %.2f[mm]',RaioC);
fprintf ('\nRaioD: %.2f[mm]',RaioD);

fprintf ('\nTensaoEscoamento: %.2f',TensaoEscoamento);
fprintf ('\nTorque: %.2f [N.mm]',Torque);
fprintf ('\nTresca: %.2f',CritTresca);
fprintf ('\nVonMisses: %.2f',VonMisses);
fprintf ('\nTenVonMisses: %.2f',TenVonMisses);
fprintf ('\nRVonMisses: %.2f',RVonMisses);
fprintf ('\nCritTresca: %.2f',CritTresca);

%criterio de escoamento de Tresca
fprintf ('\n\nCritério de escoamento de Tresca: ');
if Fi1 <= 0 && Fi2 >= 0
    fprintf('\nO menor raio pelo criterio de Tresca é: %.2f[mm]', RaioA);
elseif Fi1 >= 0 && Fi2 <= 0
    fprintf('\nO menor raio pelo criterio de Tresca é: %.2f[mm]', RaioB);
elseif Fi1 > 0 && Fi2 > 0
   fprintf('\nO menor raio pelo criterio de Tresca é: %.2f[mm]', RaioC);
else 
   fprintf('\nO menor raio pelo criterio de Tresca é: %.2f[mm]', RaioD);
end

%criterio de Von Mises
fprintf ('\n\nCritério de Von Mises: ');
fprintf ('\nO menor raio pelo criterio de Von Mises é: %.2f[mm]\n', RVonMisses);
disp('|*******************************************************|');
disp('|                   Fim do detalhamento :               |');
disp('|*******************************************************|'); 

