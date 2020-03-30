%Exerc�cio 2 lista 6 (Lista de exerc�cios n� 6).
% Exerc�co 2 : a) O motor el�trico da figura abaixo exerce, sob condi��es normais de opera��o, um torque de
%2,4 kN.m em E. Sabendo que todos os eixos do sistema s�o maci�os, determinar a tens�o de
%cisalhamento m�xima nos trechos BC, CD e DE.
%b) Determinar o novo di�metro no trecho BC para que a maior tens�o de cisalhamento do
%sistema se mantenha em todos os trechos.

% Letra a)

%T = Torque, r � o raio da barra e J o momento de in�rcia
%-------------------BC----------------------------------------%
TorqueBC=400000;% --------------------------------------------Torque em N*mm
raioBC=23;% --------------------------------------------------Raio em mm
JBC=(pi*(raioBC^4))/2;% --------------------------------------Momento de In�rcia mm^4
TenCisalhaMaxBC=(TorqueBC*raioBC)/JBC;% ----------------------Tens�o de cisalhamento m�xima em MPa
%-------------------CD----------------------------------------%
TorqueCD=1200000;% -------------------------------------------Torque em N*mm
raioCD=23;% --------------------------------------------------Raio em mm.
JCD=(pi*(raioCD^4))/2;% --------------------------------------Momento de In�rcia mm^4
TenCisalhaMaxCD=(TorqueCD*raioCD)/JCD;% ----------------------Tens�o de cisalhamento m�xima em MPa
%-------------------DE----------------------------------------%
TorqueDE=2400000;% -------------------------------------------Torque em N*mm
raioDE=27; % -------------------------------------------------Raio em mm
JDE=(pi*(raioDE^4))/2;% --------------------------------------Momento de In�rcia mm^4
TenCisalhaMaxDE=(TorqueDE*raioDE/JDE);% ----------------------Tens�o de cisalhamento m�xima em MPa
disp('---------------------------------------------------------------------')
disp('Resposta item a) :')
disp('A tens�o de cisalhamento m�xima no trecho BC em MPa � :')
disp(TenCisalhaMaxBC) 
disp('A tens�o de cisalhamento m�xima no trecho CD em MPa � :')
disp(TenCisalhaMaxCD) 
disp('A tens�o de cisalhamento m�xima no trecho DE em MPa � :')
disp(TenCisalhaMaxDE) 
disp('---------------------------------------------------------------------')

% Letra b)
 
raioBCb=((TorqueBC*2)/(pi*TenCisalhaMaxDE));
raioBCnovo= (raioBCb)^(1/3);
DiametroBCnovo= 2*raioBCnovo;
disp('Resposta item b) :')
disp('O novo di�metro em [mm] no trecho BC � : ')
disp(DiametroBCnovo) % Resposta da letra b) do exerc�cio.

