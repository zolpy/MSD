% Este programa retorna a resposta do exerc�cio 4 da lista 3.
disp('4) Usa-se um motor para girar uma roda com suas p�s no interior do equipamento mostrada na figura abaixo. Considerando que a polia A, conectada ao motor, inicia seu movimento a partir do repouso, com uma acelera��o angular ?A = 2 rad/s2, determine os m�dulos da velocidade linear e da acelera��o normal do ponto P da roda B, ap�s completar ? revolu��es, tal que 0< ? <5.')
aangularA=2 % acelera��o angular em rad/s� na polia A.
RA=0.15 % raio em m da polia A.
% ?=?i+Wi*t+aangularA*t�/2 /  ?=0+0*t+(2/2)*t� ?=t�/ WA=WiA+aangularA*t/
% WA=0+2*t/ WA=2*t/  onde t�= ? logo t= sqrt(?) logo/ WA=2*sqrt(?). Cada
% revolu��o � 2*pi agora variando 0< ? <5 logo quer dizer que � 0< ? <10*pi.
%Vn=WAn*RA.

% para acelera��o normal em P. aangularB= aangularA*(Ra/Rb)
aangularB=0.75 % acelera��o angular em rad/s� na polia B.
% ?=?i+Wi*t+aangularB*t�/2 /  ?=0+0*t+(0.75/2)*t� 2*?/0.75=t�/ t= sqrt(2.6666666666.?) / WB=WiB+aangularB*t/
% WB=0+0.75*t/ WB=0.75*t/  WB=0.75*sqrt(2.6666666666.?). Cada
% revolu��o � 2*pi agora variando 0< ? <5 logo quer dizer que � 0< ? <10*pi.
%an=(WBn)� *RA.
V1=2*sqrt(2*pi)*RA; % Velocidade linear em m/s ap�s a primeira revolu��o
V2=2*sqrt(4*pi)*RA; % Velocidade linear em m/s ap�s a segunda revolu��o.
V3=2*sqrt(6*pi)*RA; % Velocidade linear em m/s ap�s a terceira revolu��o.
V4=2*sqrt(8*pi)*RA; % Velocidade linear em m/s ap�s a quarta revolu��o.
a1=((0.75*sqrt(2.6666666666*2*pi))*(0.75*sqrt(2.6666666666*2*pi)))*RA; % Acelera��o normal em m/s� ap�s a primeira revolu��o.
a2=((0.75*sqrt(2.6666666666*4*pi))*(0.75*sqrt(2.6666666666*4*pi)))*RA; % Acelera��o normal em m/s� ap�s a segunda revolu��o.
a3=((0.75*sqrt(2.6666666666*6*pi))*(0.75*sqrt(2.6666666666*6*pi)))*RA; % Acelera��o normal em m/s� ap�s a terceira revolu��o.
a4=((0.75*sqrt(2.6666666666*8*pi))*(0.75*sqrt(2.6666666666*8*pi)))*RA; % Acelera��o normal em m/s� ap�s a quarta revolu��o.
disp('4)As respostas do exerc�cio 4 da lista 3 s�o : ') 
disp( ' A velocidade linear em m/s ap�s a primeira revolu��o � (V1) = ');
disp (V1) %resposta exerc�cio 4 da lista 3.
disp( ' A velocidade linear em m/s ap�s a segunda revolu��o � (V2) = ');
disp (V2) %resposta exerc�cio 4 da lista 3.
disp( ' A velocidade linear em m/s ap�s a terceira revolu��o � (V3) = ');
disp (V3) %resposta exerc�cio 4 da lista 3.
disp( ' A velocidade linear em m/s ap�s a quarta revolu��o � (V4) = ');
disp (V4) %resposta exerc�cio 4 da lista 3.
disp('                  ---------------------------------------')
disp('                  ---------------------------------------')
disp( ' A acelera��o normal em m/s� ap�s a primeira revolu��o � (an1) = ');
disp (a1) %resposta exerc�cio 4 da lista 3.
disp( ' A acelera��o normal em m/s� ap�s a segunda revolu��o � (an2) = ');
disp (a2) %resposta exerc�cio 4 da lista 3.
disp( ' A acelera��o normal em m/s� ap�s a terceira revolu��o � (an3) = ');
disp (a3) %resposta exerc�cio 4 da lista 3.
disp( ' A acelera��o normal em m/s �ap�s a quarta revolu��o � (an4) = ');
disp (a4) %resposta exerc�cio 4 da lista 3.