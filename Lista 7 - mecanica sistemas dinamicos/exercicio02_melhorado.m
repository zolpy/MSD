% Lista de exercícios nº 7

%2. Determine se as situações abaixo provocam a falha do equipamento, de acordo com o 
%   Critério de escoamento de Tresca e o Critério de Von Mises
close all
clear all
clc 

fiX=input('Digite o fiX: ')
fiY=input('Digite o fiY: ')
talXY=input('Digite o talXY: ')
fiDeEscoamento=input(' Digite o valor de escoamento: ');
fi1=(((fiX+fiY)/2)+sqrt(((fiX-fiY)/2)^2 + talXY^2));
fi2=(((fiX+fiY)/2)-sqrt(((fiX-fiY)/2)^2 + talXY^2));
%------------------Critério de escoamento de Tresca-----------------------%
disp('---------------RESPOSTA-----------------------')
negativo=abs(fi1-fi2);
if negativo <= fiDeEscoamento
    disp('----------------------------------------')
    disp('Pelo Critério de escoamento de Tresca:')
    disp('--Não ocorrerá falha--');
    fprintf('|fi1-fi2|: %.3f MPa <= %.3f MPa\n',negativo,fiDeEscoamento); 
    disp('----------------------------------------')
else
    disp('----------------------------------------')
    disp('Pelo Critério de escoamento de Tresca:')
    disp('--Ocorrerá falha--');
    fprintf('|fi1-fi2|: %.3f MPa >= %.3f MPa\n',negativo,fiDeEscoamento); 
    disp('----------------------------------------')
end
%-------FIM DO TESTE DO Critério de escoamento de Tresca------------------%

%----------------------Critério de Von Mises------------------------------%
VonMises=((fi1)^2-(fi1*fi2)+(fi2)^2);
Quadrado_fiDeEscoamento=(fiDeEscoamento)^2;
if (VonMises <= Quadrado_fiDeEscoamento)
    disp('----------------------------------------')
    disp('Pelo Critério de Von Mises:')
    disp('--Não ocorrerá falha--');
    fprintf('[((fi1)^2-(fi1*fi2)+(fi2)^2)]: %.3f MPa <= %.3f MPa^2\n',VonMises,Quadrado_fiDeEscoamento);
    disp('----------------------------------------')
else
    disp('----------------------------------------')
    disp('Pelo Critério de Von Mises:')
    disp('--Ocorrerá falha--');
    fprintf('[((fi1)^2-(fi1*fi2)+(fi2)^2)]: %.3f MPa >= %.3f MPa^2\n',VonMises,Quadrado_fiDeEscoamento);
    disp('----------------------------------------')
end
%-----------------FIM DO TESTE DO Critério de Von Mises-------------------%
disp('---------------DETALHAMENTO-----------------------')
fprintf('FiX é: %.3f MPa\n',fiX); 
fprintf('FiY é: %.3f MPa\n',fiY); 
fprintf('talXY é: %.3f MPa\n',talXY); 
fprintf('Fi de Escoamento é: %.3f MPa\n',fiDeEscoamento); 
fprintf('(Fi de Escoamento)^2 é: %.3f MPa\n',Quadrado_fiDeEscoamento); 
fprintf('Tensão principal 1 é: %.3f MPa\n',fi1); 
fprintf('Tensão principal 2 é: %.3f MPa\n',fi2); 
disp('-------FIM DO DETALHAMENTO DAS RESPOSTAS-----------')