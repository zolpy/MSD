% Este programa retorna a resposta do exerc�cio 7 da lista 3.
disp('7) Um motor comunica a um disco com acelera��o angular ? = (0,6.t2 + 0,75) rad/s2, onde t � dado em segundos. Se a velocidade angular inicial do motor � ?o = 6 rad/s, determine os m�dulos da velocidade linear e da acelera��o tangencial do disco quando t < 6 s com incremento de 1 segundo. Dado: 1 p� = 30,48 cm.')
%aangular=(0.6t�+0.75)rad/s�
Wo= 6 % Velocidade angular em rad/s� inicial do motor.
% t<6s  e aangular=at/R e at= aangular*R/ at= (0.6t�+0.75)/R.
R=0.1524 % raio en m do disco.
% Wf=Wo+aangular*t/ Wf=6+(0.6t�+0.75)*t.
V0= (6+(0.6*(0)^2+0.75)*0)*R; % Velocidade linear em m/s do disco quando tempo = 0s.
V1= (6+(0.6*(1)^2+0.75)*1)*R; % Velocidade linear em m/s do disco quando tempo = 1s.
V2= (6+(0.6*(2)^2+0.75)*2)*R; % Velocidade linear em m/s do disco quando tempo = 2s.
V3= (6+(0.6*(3)^2+0.75)*3)*R; % Velocidade linear em m/s do disco quando tempo = 3s.
V4= (6+(0.6*(4)^2+0.75)*4)*R; % Velocidade linear em m/s do disco quando tempo = 4s.
V5= (6+(0.6*(5)^2+0.75)*5)*R; % Velocidade linear em m/s do disco quando tempo = 5s.
at0=(0.6*(0)^2+0.75)*R; % Acelera��o Tangencial em m/s� do disco quando tempo = 0s.
at1=(0.6*(1)^2+0.75)*R; % Acelera��o Tangencial em m/s� do disco quando tempo = 1s.
at2=(0.6*(2)^2+0.75)*R; % Acelera��o Tangencial em m/s� do disco quando tempo = 2s.
at3=(0.6*(3)^2+0.75)*R; % Acelera��o Tangencial em m/s� do disco quando tempo = 3s.
at4=(0.6*(4)^2+0.75)*R; % Acelera��o Tangencial em m/s� do disco quando tempo = 4s.
at5=(0.6*(5)^2+0.75)*R; % Acelera��o Tangencial em m/s� do disco quando tempo = 5s.
disp('7)As respostas do exerc�cio 7 da lista 3 s�o : ') 
disp( ' A velocidade linear em m/s do disco no tempo = 0s � (V0) = ');
disp (V0) %resposta exerc�cio 7 da lista 3.
disp( ' A velocidade linear em m/s do disco no tempo = 1s � (V1) = ');
disp (V1) %resposta exerc�cio 7 da lista 3.
disp( ' A velocidade linear em m/s do disco no tempo = 2s � (V2) = ');
disp (V2) %resposta exerc�cio 7 da lista 3.
disp( ' A velocidade linear em m/s do disco no tempo = 3s � (V3) = ');
disp (V3) %resposta exerc�cio 7 da lista 3.
disp( ' A velocidade linear em m/s do disco no tempo = 4s � (V4) = ');
disp (V4) %resposta exerc�cio 7 da lista 3.
disp( ' A velocidade linear em m/s do disco no tempo = 5s � (V5) = ');
disp (V5) %resposta exerc�cio 7 da lista 3.
disp('                  ---------------------------------------')
disp('                  ---------------------------------------')
disp( 'Acelera��o Tangencial em m/s� do disco quando tempo = 0s � (at0) = ');
disp (at0) %resposta exerc�cio 7 da lista 3.
disp( 'Acelera��o Tangencial em m/s� do disco quando tempo = 1s � (at1) = ');
disp (at1) %resposta exerc�cio 7 da lista 3.
disp( 'Acelera��o Tangencial em m/s� do disco quando tempo = 2s � (at2) = ');
disp (at2) %resposta exerc�cio 7 da lista 3.
disp( 'Acelera��o Tangencial em m/s� do disco quando tempo = 3s � (at3) = ');
disp (at3) %resposta exerc�cio 7 da lista 3.
disp( 'Acelera��o Tangencial em m/s� do disco quando tempo = 4s � (at4) = ');
disp (at4) %resposta exerc�cio 7 da lista 3.
disp( 'Acelera��o Tangencial em m/s� do disco quando tempo = 5s � (at5) = ');
disp (at5) %resposta exerc�cio 7 da lista 3.