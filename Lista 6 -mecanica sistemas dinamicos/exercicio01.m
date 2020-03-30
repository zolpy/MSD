%Exercício 1 lista 6 (Lista de exercícios nº 6).
% Exercíco 1 : 1. a) Calcular a tensão de cisalhamento máxima causada pelo torque de 4,5 kN.m aplicado na barra
%circular maciça de diâmetro 75 mm, conforme figura abaixo.
%b) Determinar o torque que causará uma tensão de cisalhamento máxima de 45 MPa aplicado na
%mesma barra, porém vazada com diâmetro interno de 55 mm.

% Letra a)

%T = Torque, r é o raio da barra e J o momento de inércia.
Da=75;%-----------------------------------------------------Diametro em mm
T=4.5*10^6;% -----------------------------------------------Torque em N*mm
r=Da/2;% ---------------------------------------------------Raio em mm
J=(pi*(r^4))/2;% -------------------------------------------Momento de Inércia mm^4
TenCisalhaMAX=(T*r)/J;% ------------------------------------tensão de cisalhamento máxima
disp('--------------------------------------------------------------------')
disp('Letra a) :')
disp('A tensão de cisalhamento máxima em MPa :')
disp(TenCisalhaMAX)% ----------------------------------------Resposta item a)
disp('--------------------------------------------------------------------')

% Letra b)

TenCisalhaMAX=45;% ------------------------------------------Tensão cisalhamento máximo em MPa
Db=55;% -----------------------------------------------------Diametro em mm
rb=Db/2;% ---------------------------------------------------Raio em mm.
Jb=(pi*((r^4)-(rb^4)))/2;% ----------------------------------Momento de Inércia mm^4
Torque=(TenCisalhaMAX*Jb)/(r*100000);% ----------------------Torque em kN.m
disp('--------------------------------------------------------------------')
disp('Letra b) :')
disp('O torque em KN.m : ')
disp(Torque) % Resposta Item b)
disp('--------------------------------------------------------------------')

