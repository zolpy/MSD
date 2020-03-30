% Este programa retorna a resposta do exerc�cio 8 da lista 3.
disp('8) Um motor gira a engrenagem A com acelera��o angular ? = (0,25.? + 0,5) rad/s2, onde ? � dado em radianos. Se A tem velocidade angular inicial de 20 rad/s, determine a velocidade angular da engrenagem B ap�s A ter sofrido um deslocamento angular menor que 7 revolu��es com incremento de uma revolu��o.')
%aangularA=(0.25? + 0.5) rad/s�.
WAi=20 % Velocidade angular inicial em rad/s da engrenagem A.
RA=0.05 % Raio em m da engrenagem A.
RB=0.15 % Raio em m da engrenagem A.
%t=?.
%WA=WAi+aangularA*t  / WA= 20 + (0.25? + 0.5)*?/ WA= 20 + (0.25?� + 0.5?.
%A velocidade angular da engrenagem A ap�s A ter sofrido um deslocamento angular menor que 7 revolu��es com incremento de uma revolu��o.
% ?<7 revolu��o � igual a ?<14*pi com incremento de 2*pi revolu��es.
WA0=WAi + (0.25*(0)^2 + 0.5*0);       % Velocidade angular em rad/s da engrenagem A ap�s a 0 revolu��o.
WA1=WAi + (0.25*(2*pi)^2 + 0.5*2*pi); % Velocidade angular em rad/s da engrenagem A ap�s a 2*pi revolu��o.
WA2=WAi + (0.25*(4*pi)^2 + 0.5*4*pi); % Velocidade angular em rad/s da engrenagem A ap�s a 4*pi revolu��o.
WA3=WAi + (0.25*(6*pi)^2 + 0.5*6*pi); % Velocidade angular em rad/s da engrenagem A ap�s a 6*pi revolu��o.
WA4=WAi + (0.25*(8*pi)^2 + 0.5*8*pi); % Velocidade angular em rad/s da engrenagem A ap�s a 8*pi revolu��o.
WA5=WAi + (0.25*(10*pi)^2 + 0.5*10*pi); % Velocidade angular em rad/s da engrenagem A ap�s a 10*pi revolu��o.
WA6=WAi + (0.25*(12*pi)^2 + 0.5*12*pi); % Velocidade angular em rad/s da engrenagem A ap�s a 12*pi revolu��o.
% WBn=WAn*(RA/RB) aonde n varia de 0 a 6.
WB0=WA0*(RA/RB);  % Velocidade angular em rad/s da engrenagem B ap�s a 0 revolu��o.
WB1=WA1*(RA/RB);  % Velocidade angular em rad/s da engrenagem B ap�s a 2*pi revolu��o.
WB2=WA2*(RA/RB);  % Velocidade angular em rad/s da engrenagem B ap�s a 4*pi revolu��o.
WB3=WA3*(RA/RB);  % Velocidade angular em rad/s da engrenagem B ap�s a 6*pi revolu��o.
WB4=WA4*(RA/RB);  % Velocidade angular em rad/s da engrenagem B ap�s a 8*pirevolu��o.
WB5=WA5*(RA/RB);  % Velocidade angular em rad/s da engrenagem B ap�s a 10*pi revolu��o.
WB6=WA6*(RA/RB);  % Velocidade angular em rad/s da engrenagem B ap�s a 12*pi revolu��o.
disp('8)As respostas do exerc�cio 8 da lista 3 s�o :') 
disp('A velocidade angular em rad/s da engrenagem B ap�s A ter sofrido um deslocamento angular de 0 revolu��es � (WB0) = ')
disp(WB0) %1� resposta do exerc�cio 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B ap�s A ter sofrido um deslocamento angular de 1 revolu��es � (WB1) = ')
disp(WB1) %2� resposta do exerc�cio 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B ap�s A ter sofrido um deslocamento angular de 2 revolu��es � (WB2) = ')
disp(WB2) %3� resposta do exerc�cio 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B ap�s A ter sofrido um deslocamento angular de 3 revolu��es � (WB3) = ')
disp(WB3) %4� resposta do exerc�cio 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B ap�s A ter sofrido um deslocamento angular de 4 revolu��es � (WB4) = ')
disp(WB4) %5� resposta do exerc�cio 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B ap�s A ter sofrido um deslocamento angular de 5 revolu��es � (WB5) = ')
disp(WB5) %6� resposta do exerc�cio 8 da lista 3.
disp('A velocidade angular em rad/s da engrenagem B ap�s A ter sofrido um deslocamento angular de 6 revolu��es � (WB6) = ')
disp(WB6) %7� resposta do exerc�cio 8 da lista 3.