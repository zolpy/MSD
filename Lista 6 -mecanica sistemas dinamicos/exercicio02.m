%Exercício 2 lista 6 (Lista de exercícios nº 6).
% Exercíco 2 : a) O motor elétrico da figura abaixo exerce, sob condições normais de operação, um torque de
%2,4 kN.m em E. Sabendo que todos os eixos do sistema são maciços, determinar a tensão de
%cisalhamento máxima nos trechos BC, CD e DE.
%b) Determinar o novo diâmetro no trecho BC para que a maior tensão de cisalhamento do
%sistema se mantenha em todos os trechos.

% Letra a)

%T = Torque, r é o raio da barra e J o momento de inércia
%-------------------BC----------------------------------------%
TorqueBC=400000;% --------------------------------------------Torque em N*mm
raioBC=23;% --------------------------------------------------Raio em mm
JBC=(pi*(raioBC^4))/2;% --------------------------------------Momento de Inércia mm^4
TenCisalhaMaxBC=(TorqueBC*raioBC)/JBC;% ----------------------Tensão de cisalhamento máxima em MPa
%-------------------CD----------------------------------------%
TorqueCD=1200000;% -------------------------------------------Torque em N*mm
raioCD=23;% --------------------------------------------------Raio em mm.
JCD=(pi*(raioCD^4))/2;% --------------------------------------Momento de Inércia mm^4
TenCisalhaMaxCD=(TorqueCD*raioCD)/JCD;% ----------------------Tensão de cisalhamento máxima em MPa
%-------------------DE----------------------------------------%
TorqueDE=2400000;% -------------------------------------------Torque em N*mm
raioDE=27; % -------------------------------------------------Raio em mm
JDE=(pi*(raioDE^4))/2;% --------------------------------------Momento de Inércia mm^4
TenCisalhaMaxDE=(TorqueDE*raioDE/JDE);% ----------------------Tensão de cisalhamento máxima em MPa
disp('---------------------------------------------------------------------')
disp('Resposta item a) :')
disp('A tensão de cisalhamento máxima no trecho BC em MPa é :')
disp(TenCisalhaMaxBC) 
disp('A tensão de cisalhamento máxima no trecho CD em MPa é :')
disp(TenCisalhaMaxCD) 
disp('A tensão de cisalhamento máxima no trecho DE em MPa é :')
disp(TenCisalhaMaxDE) 
disp('---------------------------------------------------------------------')

% Letra b)
 
raioBCb=((TorqueBC*2)/(pi*TenCisalhaMaxDE));
raioBCnovo= (raioBCb)^(1/3);
DiametroBCnovo= 2*raioBCnovo;
disp('Resposta item b) :')
disp('O novo diâmetro em [mm] no trecho BC é : ')
disp(DiametroBCnovo) % Resposta da letra b) do exercício.

