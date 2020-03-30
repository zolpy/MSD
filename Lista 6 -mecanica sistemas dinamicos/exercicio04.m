%Exercício 4 lista 6 (Lista de exercícios nº 6).
% Exercíco 4 :Dois eixos de aço são acoplados pelas engrenagens mostradas.
%a) Determinar a máxima tensão de cisalhamento em cada eixo, quando um torque de 1 kN.m for 
%   aplicado em D, sabendo que a relação de engrenagens é dada por 
%   rb/rc = TAB/TCD
%b) Se a máxima tensão de cisalhamento em cada eixo for de 60 MPa, qual deve ser o diâmetro de
%   AB e CD.
%c) Qual o maior torque em D, se a máxima tensão de cisalhamento em cada eixo for de 50 MPa e
%   os eixos forem vazados com diâmetro interno de 30 mm.

% Letra a)

%T = Torque, r é o raio da barra e J o momento de inércia.
raioAB= 28;%---------------------------------------------Raio trecho AB em mm
raioCD= 21;%---------------------------------------------Raio trecho CD em mm
raioB= 100;%---------------------------------------------Raio trecho B em mm
raioC= 40;%----------------------------------------------Raio trecho C em mm
TorqueCD=1000000;% --------------------------------------Torque em N*mm
TorqueAB=(raioB*TorqueCD)/raioC;%------------------------Torque em N*mm
JAB=(pi*(raioAB^4))/2;%----------------------------------Momento de Inércia mm^4
JCD=(pi*(raioCD^4))/2;%----------------------------------Momento de Inércia mm^4
disp('Resposta ITEM a) :')
disp('A máxima TenCisalhaMax em MPa em cada eixo são : ')
TenCisalhaMax_AB=(TorqueAB*raioAB)/JAB  
TenCisalhaMax_CD=(TorqueCD*raioCD)/JCD  
TenCisalhaMax_ABnovo=60; 
Raio_ABnovo=(((TorqueAB*2)/(pi*TenCisalhaMax_ABnovo))^(1/3)); %O novo raio de rCD.
disp('----------------------------------------------------------------------')
disp('Resposta ITEM b) :')
disp('O novo diâmetro em mm de AB é : ')
Diametro_ABnovo=2*Raio_ABnovo 
TenCisalhaMaxCDnovo=60;% --------------------------------------------em MPa.
RCDnovo=(((TorqueCD*2)/(pi*TenCisalhaMaxCDnovo))^(1/3)); %O novo raio de rCD.
disp('O novo diâmetro em mm de CD é : ')
Diametro_CDnovo=2*RCDnovo
raioDC=21;%----------------------------------------------------------Raio em mm.
JDC=(pi*((21^4)-(15^4))/2);
TenCisalhaMax_DC=50; %-----------------------------------------------tensão de cisalhamento máxima em MPa.
disp('-----------------------------------------------------------------------')
disp('Resposta Item c) :')
disp('O maior torque em N.m em D é : ')
TD=(TenCisalhaMax_DC*JDC)/(raioDC)/1000
