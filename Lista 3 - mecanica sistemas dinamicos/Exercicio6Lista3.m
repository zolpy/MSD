% Este programa retorna a resposta do exerc�cio 6 da lista 3.
disp('6) Considere as engrenagens A e B mostradas na figura. Se A parte do repouso e tem acelera��o angular constante ?A = 2 rad/s2, determine o tempo necess�rio para B atingir velocidades angulares entre 20 e 50 rad/s com incremento de 10 rad/s.')
RA=0.025 % Raio em m da engrengagem A.
RB=0.100 % Raio em m da engrengagem B.
aA=2 % Acelera��o angular em rad/s� de A.
aB=aA*(RA/RB); % Acelera��o angular em rad/s� de B.
%tn=Wj/aB; aonde Wj varia de 10 rad/s em 10 rad/s entre os valores de 20
%rad/s e 50 rad/s
t1=20/aB;
t2=30/aB;
t3=40/aB;
t4=50/aB;
disp('6)As respostas do exerc�cio 6 da lista 3 s�o : ') 
disp( ' O tempo necess�rio em s para B atingir velocidades angulares de W=20 rad/s � (t1) = ');
disp (t1) %resposta exerc�cio 6 da lista 3.
disp( ' O tempo necess�rio em s para B atingir velocidades angulares de W=30 rad/s � (t2) = ');
disp (t2) %resposta exerc�cio 6 da lista 3.
disp( ' O tempo necess�rio em s para B atingir velocidades angulares de W=40 rad/s � (t3) = ');
disp (t3) %resposta exerc�cio 6 da lista 3.
disp( ' O tempo necess�rio em s para B atingir velocidades angulares de W=50 rad/s � (t4) = ');
disp (t4) %resposta exerc�cio 6 da lista 3.