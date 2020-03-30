%Exerc�cio 1 lista 6 (Lista de exerc�cios n� 6).
% Exerc�co 1 : 1. a) Calcular a tens�o de cisalhamento m�xima causada pelo torque de 4,5 kN.m aplicado na barra
%circular maci�a de di�metro 75 mm, conforme figura abaixo.
%b) Determinar o torque que causar� uma tens�o de cisalhamento m�xima de 45 MPa aplicado na
%mesma barra, por�m vazada com di�metro interno de 55 mm.

% Letra a)

%T = Torque, r � o raio da barra e J o momento de in�rcia.
Da=75;%-----------------------------------------------------Diametro em mm
T=4.5*10^6;% -----------------------------------------------Torque em N*mm
r=Da/2;% ---------------------------------------------------Raio em mm
J=(pi*(r^4))/2;% -------------------------------------------Momento de In�rcia mm^4
TenCisalhaMAX=(T*r)/J;% ------------------------------------tens�o de cisalhamento m�xima
disp('--------------------------------------------------------------------')
disp('Letra a) :')
disp('A tens�o de cisalhamento m�xima em MPa :')
disp(TenCisalhaMAX)% ----------------------------------------Resposta item a)
disp('--------------------------------------------------------------------')

% Letra b)

TenCisalhaMAX=45;% ------------------------------------------Tens�o cisalhamento m�ximo em MPa
Db=55;% -----------------------------------------------------Diametro em mm
rb=Db/2;% ---------------------------------------------------Raio em mm.
Jb=(pi*((r^4)-(rb^4)))/2;% ----------------------------------Momento de In�rcia mm^4
Torque=(TenCisalhaMAX*Jb)/(r*100000);% ----------------------Torque em kN.m
disp('--------------------------------------------------------------------')
disp('Letra b) :')
disp('O torque em KN.m : ')
disp(Torque) % Resposta Item b)
disp('--------------------------------------------------------------------')

