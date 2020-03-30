% Este programa retorna a resposta do exercício 8 da lista 3.
disp('8) Um motor gira a engrenagem A com aceleração angular ? = (0,25.? + 0,5) rad/s2, onde ? é dado em radianos. Se A tem velocidade angular inicial de 20 rad/s, determine a velocidade angular da engrenagem B após A ter sofrido um deslocamento angular menor que 7 revoluções com incremento de uma revolução.')
%aangularA=(0.25? + 0.5) rad/s².
WAi=20 % Velocidade angular inicial em rad/s da engrenagem A.
RA=0.05 % Raio em m da engrenagem A.
RB=0.15 % Raio em m da engrenagem A.
%t=?.
%WA=WAi+aangularA*t  / WA= 20 + (0.25? + 0.5)*?/ WA= 20 + (0.25?² + 0.5?.
%A velocidade angular da engrenagem A após A ter sofrido um deslocamento angular menor que 7 revoluções com incremento de uma revolução.
% ?<7 revolução é igual a ?<14*pi com incremento de 2*pi revoluções.
WA0=WAi + (0.25*(0)^2 + 0.5*0);       % Velocidade angular em rad/s da engrenagem A após a 0 revolução.
WA1=WAi + (0.25*(2*pi)^2 + 0.5*2*pi); % Velocidade angular em rad/s da engrenagem A após a 2*pi revolução.
WA2=WAi + (0.25*(4*pi)^2 + 0.5*4*pi); % Velocidade angular em rad/s da engrenagem A após a 4*pi revolução.
WA3=WAi + (0.25*(6*pi)^2 + 0.5*6*pi); % Velocidade angular em rad/s da engrenagem A após a 6*pi revolução.
WA4=WAi + (0.25*(8*pi)^2 + 0.5*8*pi); % Velocidade angular em rad/s da engrenagem A após a 8*pi revolução.
WA5=WAi + (0.25*(10*pi)^2 + 0.5*10*pi); % Velocidade angular em rad/s da engrenagem A após a 10*pi revolução.
WA6=WAi + (0.25*(12*pi)^2 + 0.5*12*pi); % Velocidade angular em rad/s da engrenagem A após a 12*pi revolução.
% WBn=WAn*(RA/RB) aonde n varia de 0 a 6.
WB0=WA0*(RA/RB);  % Velocidade angular em rad/s da engrenagem B após a 0 revolução.
WB1=WA1*(RA/RB);  % Velocidade angular em rad/s da engrenagem B após a 2*pi revolução.
WB2=WA2*(RA/RB);  % Velocidade angular em rad/s da engrenagem B após a 4*pi revolução.
WB3=WA3*(RA/RB);  % Velocidade angular em rad/s da engrenagem B após a 6*pi revolução.
WB4=WA4*(RA/RB);  % Velocidade angular em rad/s da engrenagem B após a 8*pirevolução.
WB5=WA5*(RA/RB);  % Velocidade angular em rad/s da engrenagem B após a 10*pi revolução.
WB6=WA6*(RA/RB);  % Velocidade angular em rad/s da engrenagem B após a 12*pi revolução.
disp('8)As respostas do exercício 8 da lista 3 são :') 
disp('A velocidade angular em rad/s da engrenagem B após A ter sofrido um deslocamento angular de 0 revoluções é (WB0) = ')
disp(WB0) %1° resposta do exercício 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B após A ter sofrido um deslocamento angular de 1 revoluções é (WB1) = ')
disp(WB1) %2° resposta do exercício 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B após A ter sofrido um deslocamento angular de 2 revoluções é (WB2) = ')
disp(WB2) %3° resposta do exercício 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B após A ter sofrido um deslocamento angular de 3 revoluções é (WB3) = ')
disp(WB3) %4° resposta do exercício 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B após A ter sofrido um deslocamento angular de 4 revoluções é (WB4) = ')
disp(WB4) %5° resposta do exercício 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B após A ter sofrido um deslocamento angular de 5 revoluções é (WB5) = ')
disp(WB5) %6° resposta do exercício 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B após A ter sofrido um deslocamento angular de 6 revoluções é (WB6) = ')
disp(WB6) %7° resposta do exercício 8 da lista 3.