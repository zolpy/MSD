% Este programa retorna a resposta do exercício 4 da lista 3.
disp('4) Usa-se um motor para girar uma roda com suas pás no interior do equipamento mostrada na figura abaixo. Considerando que a polia A, conectada ao motor, inicia seu movimento a partir do repouso, com uma aceleração angular ?A = 2 rad/s2, determine os módulos da velocidade linear e da aceleração normal do ponto P da roda B, após completar ? revoluções, tal que 0< ? <5.')
aangularA=2 % aceleração angular em rad/s² na polia A.
RA=0.15 % raio em m da polia A.
% ?=?i+Wi*t+aangularA*t²/2 /  ?=0+0*t+(2/2)*t² ?=t²/ WA=WiA+aangularA*t/
% WA=0+2*t/ WA=2*t/  onde t²= ? logo t= sqrt(?) logo/ WA=2*sqrt(?). Cada
% revolução é 2*pi agora variando 0< ? <5 logo quer dizer que é 0< ? <10*pi.
%Vn=WAn*RA.

% para aceleração normal em P. aangularB= aangularA*(Ra/Rb)
aangularB=0.75 % aceleração angular em rad/s² na polia B.
% ?=?i+Wi*t+aangularB*t²/2 /  ?=0+0*t+(0.75/2)*t² 2*?/0.75=t²/ t= sqrt(2.6666666666.?) / WB=WiB+aangularB*t/
% WB=0+0.75*t/ WB=0.75*t/  WB=0.75*sqrt(2.6666666666.?). Cada
% revolução é 2*pi agora variando 0< ? <5 logo quer dizer que é 0< ? <10*pi.
%an=(WBn)³ *RA.
V1=2*sqrt(2*pi)*RA; % Velocidade linear em m/s após a primeira revolução
V2=2*sqrt(4*pi)*RA; % Velocidade linear em m/s após a segunda revolução.
V3=2*sqrt(6*pi)*RA; % Velocidade linear em m/s após a terceira revolução.
V4=2*sqrt(8*pi)*RA; % Velocidade linear em m/s após a quarta revolução.
a1=((0.75*sqrt(2.6666666666*2*pi))*(0.75*sqrt(2.6666666666*2*pi)))*RA; % Aceleração normal em m/s² após a primeira revolução.
a2=((0.75*sqrt(2.6666666666*4*pi))*(0.75*sqrt(2.6666666666*4*pi)))*RA; % Aceleração normal em m/s² após a segunda revolução.
a3=((0.75*sqrt(2.6666666666*6*pi))*(0.75*sqrt(2.6666666666*6*pi)))*RA; % Aceleração normal em m/s² após a terceira revolução.
a4=((0.75*sqrt(2.6666666666*8*pi))*(0.75*sqrt(2.6666666666*8*pi)))*RA; % Aceleração normal em m/s² após a quarta revolução.
disp('4)As respostas do exercício 4 da lista 3 são : ') 
disp( ' A velocidade linear em m/s após a primeira revolução é (V1) = ');
disp (V1) %resposta exercício 4 da lista 3.
disp( ' A velocidade linear em m/s após a segunda revolução é (V2) = ');
disp (V2) %resposta exercício 4 da lista 3.
disp( ' A velocidade linear em m/s após a terceira revolução é (V3) = ');
disp (V3) %resposta exercício 4 da lista 3.
disp( ' A velocidade linear em m/s após a quarta revolução é (V4) = ');
disp (V4) %resposta exercício 4 da lista 3.
disp('                  ---------------------------------------')
disp('                  ---------------------------------------')
disp( ' A aceleração normal em m/s² após a primeira revolução é (an1) = ');
disp (a1) %resposta exercício 4 da lista 3.
disp( ' A aceleração normal em m/s² após a segunda revolução é (an2) = ');
disp (a2) %resposta exercício 4 da lista 3.
disp( ' A aceleração normal em m/s² após a terceira revolução é (an3) = ');
disp (a3) %resposta exercício 4 da lista 3.
disp( ' A aceleração normal em m/s ²após a quarta revolução é (an4) = ');
disp (a4) %resposta exercício 4 da lista 3.