%-------LISTA 4 (Resistência dos elementos mecânicos)----------------
%(2) Cada uma das quatro hastes verticais, ligadas às duas barras horizontais, 
%    tem seção transversal retangular uniforme. Determine seção transversal no 
%    centro das hastes conectadas pelos pontos C e F, para tensões últimas 
%    entre 50 e 60 MPa com incremento de 0,5 MPa (considerar FS = 2,5).
%    tensão=P/A  - A=P/TenUlt  - TenUlt=tensão*Fs*0.5
TenUlt=50:0.5:60;             % Tensões últimas nas hastes C e F.
F=(((20000*250)/400)/2);      % Força De compressão no ponto C.
Fs=2.5;                       % Fator de correção.
tensaoadm=TenUlt./Fs;         % Tensões nas hastes C e F.
A=(F./tensaoadm);             % Os valores das variação de seção transversal no centro das hastes C e F.
disp('(2)A variação em [mm^2] de área deve estar entre:') ;
disp(A(20)) ;
disp('  e  ') ;
disp(A(1));
disp('----------------------------------------------------------------');

%(3) Na figura abaixo, considerar as hastes CD e BE como rígidas
%    e módulo de elasticidade da haste AB igual a 10,4x106 MPa. 
%    Sabendo-se que todas as hastes possuem seção transversal retangular uniforme 
%    de 0, 5 x 1 cm. Determinar a variação do valor de P para que a variação de 
%    comprimento (?L) da haste AB não ultrapasse a 0,014 mm, com incremento de 0,001 mm.

%    Como F é a força na Haste AB aplicando o Momento achamos 
%    P*380=F*250   /   F=1.52*P ;
%    Temos (F/A)=E*(DeltaL/L)   /   F=E*A*(DeltaL/L);
%    Como  F=1.52*P   /   tem-se 1.52*P=E*A*(DeltaL/L);
%    P=(E*A*(DeltaL/L))/(1.52*L);

A=50                               % Àrea da haste AB em [mm^2]
E=10.4*10^6                        % Módulo de elásticidade em [MPa]
L=200                              % Comprimento Haste AB em [mm]
DeltaL=(0.001:0.001:0.014);        % Variação de comprimento em [mm]
P=((A.*E.*DeltaL)./(L.*1.52));     % O valor da valor P com a variação de DeltaL
disp('(3) Exercicio');
disp('As valores de P: ');
disp('DeltaL=0.0010 o valor de P = ')
disp(P(1));
disp('DeltaL=0.0020 o valor de P = ')
disp(P(2));
disp('DeltaL=0.0030 o valor de P = ')
disp(P(3));
disp('DeltaL=0.0040 o valor de P = ')
disp(P(4));
disp('DeltaL=0.0050 o valor de P = ')
disp(P(5));
disp('DeltaL=0.0060 o valor de P = ')
disp(P(6));
disp('DeltaL=0.0070 o valor de P = ')
disp(P(7));
disp('DeltaL=0.0080 o valor de P = ')
disp(P(8));
disp('DeltaL=0.0090 o valor de P = ')
disp(P(9));
disp('DeltaL=0.0100 o valor de P = ')
disp(P(10));
disp('DeltaL=0.0110 o valor de P = ')
disp(P(11));
disp('DeltaL=0.0120 o valor de P = ')
disp(P(12));
disp('DeltaL=0.0130 o valor de P = ')
disp(P(13));
disp('DeltaL=0.0140 o valor de P = ')
disp(P(14));
disp('----------------------------------------------------------------');




