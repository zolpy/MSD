%Exercício 5 lista 6 (Lista de exercícios nº 6).
% Exercíco 5 : Considerando que os eixos maciços AB e CD são ligados por engrenagens como mostra a figura
%e sabendo que a tensão de cisalhamento admissível em cada eixo é de 55 MPa, determinar o torque
%que poderá ser aplicado à extremidade A do eixo AB e o ângulo de torção em A correspondente a
%este torque. Dados: G = 80 GPa

% Letra a)
raioAB=9;% ------------------------------------------------------Raio em mm
TensaoA=55;%-----------------------------------------------------Tensão em MPa
L=600;% ---------------------------------------------------------Comprimento em mm
G=80000;% -------------------------------------------------------G em MPa
JAB=((pi*(raioAB^4))/2);%----------------------------------------Momento de Inercia
%-----------------------------RESPOSTA-------------------------------------%
disp('A resposta ITEM a):')
disp('O torque em kN.m:')
TorqueA=((TensaoA*JAB)/raioAB)/1000
disp('--------------------------------------------------------------------')

% Letra b)
%T = Torque, r é o raio da barra e J o momento de inércia.
disp('A resposta ITEM b):')
disp('O ângulo de torção em A correspondente ao torque em radianos é :')
Angulo=(TorqueA*9000)/(JAB*800)

