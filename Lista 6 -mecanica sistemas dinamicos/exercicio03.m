%Exercício 3 lista 6 (Lista de exercícios nº 6).
% Exercíco 3 :a) Os torques mostrados são aplicados às polias A, B, C e D. Sabendo-se que todo o eixo é
% maciço, determinar em qual trecho ocorre a maior tensão de cisalhamento e sua intensidade.
% b) Considerando que o eixo foi usinado, passando a ser vazado com diâmetro interno de 5 mm,
% qual seria o novo trecho que ocorre a maior tensão de cisalhamento e sua intensidade.

% Letra a)

%T = Torque, r é o raio da barra e J o momento de inércia.
%-----------------------Raios---------------------------------------------%
raioAB= 5;% ------------------------------------------------------Raio Trecho AB em mm
raioBC= 7.5;% ----------------------------------------------------Raio Trecho BC em mm
raioCD= 10;% -----------------------------------------------------Raio Trecho CD em mm
raioDE= 12.5;% ---------------------------------------------------Raio Trecho DE em mm
raioInterno=2.5;% ------------------------------------------------Raio Interno em mm
%-----------------------Torques-------------------------------------------%
TorqueAB=15000;  % Torque em N*mm.
TorqueBC=45000;  % Torque em N*mm.
TorqueCD=135000;  % Torque em N*mm.
TorqueDE=15000;  % Torque em N*mm.
%-----------------------Momento de inercia em mm^4------------------------%
JAB=(pi*(raioAB^4))/2;  
JBC=(pi*(raioBC^4))/2;  
JCD=(pi*(raioCD^4))/2;  
JDE=(pi*(raioDE^4))/2;  
%-----------------------Momento de inercia em B mm^4----------------------%
JAB1=(pi*((raioAB^4)-(raioInterno^4)))/2;  
JBC2=(pi*((raioBC^4)-(raioInterno^4)))/2;  
JCD3=(pi*((raioCD^4)-(raioInterno^4)))/2;  
JDE4=(pi*((raioDE^4)-(raioInterno^4)))/2;  %
%-----------------------Tensão Cisalhamento Max em MPa--------------------%
TenCisalhamentoMAX_AB=(TorqueAB*raioAB)/JAB;  
TenCisalhamentoMAX_BC=(TorqueBC*raioBC)/JBC;  
TenCisalhamentoMAX_CD=(TorqueCD*raioCD)/JCD;  
TenCisalhamentoMAX_DE=(TorqueDE*raioDE)/JDE;  
%-----------------------Tensão Cisalhamento Max Em B----------------------%
TenCisalhamentoMAX_AB1=(TorqueAB*raioAB)/JAB1;  
TenCisalhamentoMAX_BC2=(TorqueBC*raioBC)/JBC2;  
TenCisalhamentoMAX_CD3=(TorqueCD*raioCD)/JCD3; 
TenCisalhamentoMAX_DE4=(TorqueDE*raioDE)/JDE4;  
%-----------------------Tensão Cisalhamento Max em MPa--------------------%
T(1)=TenCisalhamentoMAX_AB;  
T(2)=TenCisalhamentoMAX_BC;  
T(3)=TenCisalhamentoMAX_CD;  
T(4)=TenCisalhamentoMAX_DE;   
%-----------------------RESPOSTAS-----------------------------------------%
disp('Resposta ITEM a) :')
disp('O trecho que ocorre a maior TenCisalhamento em MPa é TCD:')
disp('A maior TenCisalhamento em MPa é :')
disp(max(T(:))); 
V(1)=TenCisalhamentoMAX_AB1;% --------------------------------------tensão de cisalhamento máxima em MPa
V(2)=TenCisalhamentoMAX_BC2;% --------------------------------------tensão de cisalhamento máxima em MPa
V(3)=TenCisalhamentoMAX_CD3;% --------------------------------------tensão de cisalhamento máxima em MPa
V(4)=TenCisalhamentoMAX_DE4;% --------------------------------------tensão de cisalhamento máxima em MPa
disp('----------------------------------------------------------------------')
disp('Resposta ITEM b) :')
disp('O novo trecho que ocorre a maior TenCisalhamento em MPa é TCD:')
disp('A maior TenCisalhamento em MPa é :')
disp(max(V(:))); 

        

