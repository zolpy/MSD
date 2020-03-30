%3. O estado de tens�o que age sobre um ponto cr�tico em um elemento de 
%m�quina � mostrado na figura abaixo. Determine a menor tens�o de escoamento
%para um a�o que possa ser selecionado para a fabrica��o da pe�a.
clear all
close all
clc
disp('|*******************************************************|');
disp('|  Determine a menor tens�o de escoamento para um a�o   |');
disp('|  que possa ser selecionado para a fabrica��o da pe�a. |');
disp('|*******************************************************|');

fprintf('\n\nExercicio 3: \n\n');
FiX = input ('Digite FiX: '); %tensao de cisalhamento em x
FiY = input ('Digite FiY: ');% tensao de cisalhamento em y
TalXY = input ('Digite TalXY: ');%tensao de cisalhamento xy

t = (FiX-FiY)/2;
a = (FiX+FiY)/2;
b = (t^2)+TalXY^2;
Fi1 = a + sqrt(b);
Fi2 = a - sqrt(b);

VonMisses = ((Fi1)^2 - (Fi1*Fi2) + (Fi2)^2);
TenVonMisses = sqrt(VonMisses);
clc
disp('|*******************************************************|');
disp('|                Inicio do detalhamento :               |');
disp('|*******************************************************|'); 
fprintf ('\nFiX: %.2f',FiX);
fprintf ('\nFiY: %.2f',FiY);
fprintf ('\nTalXY: %.2f',TalXY);
fprintf ('\nFi1: %.2f',Fi1);
fprintf ('\nFi2: %.2f',Fi2);
fprintf ('\nVonMisses: %.2f',VonMisses);
fprintf ('\nTenVonMisses: %.2f',TenVonMisses);
%criterio de Von Mises
fprintf ('\n\nCrit�rio de Von Mises: \n');
fprintf('Menor tensao de escoamento pelo,\ncriterio de Von Mises: %.2fMPa \n\n', TenVonMisses);
disp('|*******************************************************|');
disp('|                   Fim do detalhamento :               |');
disp('|*******************************************************|'); 

