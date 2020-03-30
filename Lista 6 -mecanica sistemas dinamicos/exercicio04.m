%Exerc�cio 4 lista 6 (Lista de exerc�cios n� 6).
% Exerc�co 4 :Dois eixos de a�o s�o acoplados pelas engrenagens mostradas.
%a) Determinar a m�xima tens�o de cisalhamento em cada eixo, quando um torque de 1 kN.m for 
%   aplicado em D, sabendo que a rela��o de engrenagens � dada por 
%   rb/rc = TAB/TCD
%b) Se a m�xima tens�o de cisalhamento em cada eixo for de 60 MPa, qual deve ser o di�metro de
%   AB e CD.
%c) Qual o maior torque em D, se a m�xima tens�o de cisalhamento em cada eixo for de 50 MPa e
%   os eixos forem vazados com di�metro interno de 30 mm.

% Letra a)

%T = Torque, r � o raio da barra e J o momento de in�rcia.
raioAB= 28;%---------------------------------------------Raio trecho AB em mm
raioCD= 21;%---------------------------------------------Raio trecho CD em mm
raioB= 100;%---------------------------------------------Raio trecho B em mm
raioC= 40;%----------------------------------------------Raio trecho C em mm
TorqueCD=1000000;% --------------------------------------Torque em N*mm
TorqueAB=(raioB*TorqueCD)/raioC;%------------------------Torque em N*mm
JAB=(pi*(raioAB^4))/2;%----------------------------------Momento de In�rcia mm^4
JCD=(pi*(raioCD^4))/2;%----------------------------------Momento de In�rcia mm^4
disp('Resposta ITEM a) :')
disp('A m�xima TenCisalhaMax em MPa em cada eixo s�o : ')
TenCisalhaMax_AB=(TorqueAB*raioAB)/JAB  
TenCisalhaMax_CD=(TorqueCD*raioCD)/JCD  
TenCisalhaMax_ABnovo=60; 
Raio_ABnovo=(((TorqueAB*2)/(pi*TenCisalhaMax_ABnovo))^(1/3)); %O novo raio de rCD.
disp('----------------------------------------------------------------------')
disp('Resposta ITEM b) :')
disp('O novo di�metro em mm de AB � : ')
Diametro_ABnovo=2*Raio_ABnovo 
TenCisalhaMaxCDnovo=60;% --------------------------------------------em MPa.
RCDnovo=(((TorqueCD*2)/(pi*TenCisalhaMaxCDnovo))^(1/3)); %O novo raio de rCD.
disp('O novo di�metro em mm de CD � : ')
Diametro_CDnovo=2*RCDnovo
raioDC=21;%----------------------------------------------------------Raio em mm.
JDC=(pi*((21^4)-(15^4))/2);
TenCisalhaMax_DC=50; %-----------------------------------------------tens�o de cisalhamento m�xima em MPa.
disp('-----------------------------------------------------------------------')
disp('Resposta Item c) :')
disp('O maior torque em N.m em D � : ')
TD=(TenCisalhaMax_DC*JDC)/(raioDC)/1000
