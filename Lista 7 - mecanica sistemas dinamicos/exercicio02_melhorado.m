% Lista de exerc�cios n� 7

%2. Determine se as situa��es abaixo provocam a falha do equipamento, de acordo com o 
%   Crit�rio de escoamento de Tresca e o Crit�rio de Von Mises
close all
clear all
clc 

fiX=input('Digite o fiX: ')
fiY=input('Digite o fiY: ')
talXY=input('Digite o talXY: ')
fiDeEscoamento=input(' Digite o valor de escoamento: ');
fi1=(((fiX+fiY)/2)+sqrt(((fiX-fiY)/2)^2 + talXY^2));
fi2=(((fiX+fiY)/2)-sqrt(((fiX-fiY)/2)^2 + talXY^2));
%------------------Crit�rio de escoamento de Tresca-----------------------%
disp('---------------RESPOSTA-----------------------')
negativo=abs(fi1-fi2);
if negativo <= fiDeEscoamento
    disp('----------------------------------------')
    disp('Pelo Crit�rio de escoamento de Tresca:')
    disp('--N�o ocorrer� falha--');
    fprintf('|fi1-fi2|: %.3f MPa <= %.3f MPa\n',negativo,fiDeEscoamento); 
    disp('----------------------------------------')
else
    disp('----------------------------------------')
    disp('Pelo Crit�rio de escoamento de Tresca:')
    disp('--Ocorrer� falha--');
    fprintf('|fi1-fi2|: %.3f MPa >= %.3f MPa\n',negativo,fiDeEscoamento); 
    disp('----------------------------------------')
end
%-------FIM DO TESTE DO Crit�rio de escoamento de Tresca------------------%

%----------------------Crit�rio de Von Mises------------------------------%
VonMises=((fi1)^2-(fi1*fi2)+(fi2)^2);
Quadrado_fiDeEscoamento=(fiDeEscoamento)^2;
if (VonMises <= Quadrado_fiDeEscoamento)
    disp('----------------------------------------')
    disp('Pelo Crit�rio de Von Mises:')
    disp('--N�o ocorrer� falha--');
    fprintf('[((fi1)^2-(fi1*fi2)+(fi2)^2)]: %.3f MPa <= %.3f MPa^2\n',VonMises,Quadrado_fiDeEscoamento);
    disp('----------------------------------------')
else
    disp('----------------------------------------')
    disp('Pelo Crit�rio de Von Mises:')
    disp('--Ocorrer� falha--');
    fprintf('[((fi1)^2-(fi1*fi2)+(fi2)^2)]: %.3f MPa >= %.3f MPa^2\n',VonMises,Quadrado_fiDeEscoamento);
    disp('----------------------------------------')
end
%-----------------FIM DO TESTE DO Crit�rio de Von Mises-------------------%
disp('---------------DETALHAMENTO-----------------------')
fprintf('FiX �: %.3f MPa\n',fiX); 
fprintf('FiY �: %.3f MPa\n',fiY); 
fprintf('talXY �: %.3f MPa\n',talXY); 
fprintf('Fi de Escoamento �: %.3f MPa\n',fiDeEscoamento); 
fprintf('(Fi de Escoamento)^2 �: %.3f MPa\n',Quadrado_fiDeEscoamento); 
fprintf('Tens�o principal 1 �: %.3f MPa\n',fi1); 
fprintf('Tens�o principal 2 �: %.3f MPa\n',fi2); 
disp('-------FIM DO DETALHAMENTO DAS RESPOSTAS-----------')