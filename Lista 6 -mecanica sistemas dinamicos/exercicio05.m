%Exerc�cio 5 lista 6 (Lista de exerc�cios n� 6).
% Exerc�co 5 : Considerando que os eixos maci�os AB e CD s�o ligados por engrenagens como mostra a figura
%e sabendo que a tens�o de cisalhamento admiss�vel em cada eixo � de 55 MPa, determinar o torque
%que poder� ser aplicado � extremidade A do eixo AB e o �ngulo de tor��o em A correspondente a
%este torque. Dados: G = 80 GPa

% Letra a)
raioAB=9;% ------------------------------------------------------Raio em mm
TensaoA=55;%-----------------------------------------------------Tens�o em MPa
L=600;% ---------------------------------------------------------Comprimento em mm
G=80000;% -------------------------------------------------------G em MPa
JAB=((pi*(raioAB^4))/2);%----------------------------------------Momento de Inercia
%-----------------------------RESPOSTA-------------------------------------%
disp('A resposta ITEM a):')
disp('O torque em kN.m:')
TorqueA=((TensaoA*JAB)/raioAB)/1000
disp('--------------------------------------------------------------------')

% Letra b)
%T = Torque, r � o raio da barra e J o momento de in�rcia.
disp('A resposta ITEM b):')
disp('O �ngulo de tor��o em A correspondente ao torque em radianos � :')
Angulo=(TorqueA*9000)/(JAB*800)

