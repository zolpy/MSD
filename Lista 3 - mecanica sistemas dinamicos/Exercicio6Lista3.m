% Este programa retorna a resposta do exercício 6 da lista 3.
disp('6) Considere as engrenagens A e B mostradas na figura. Se A parte do repouso e tem aceleração angular constante ?A = 2 rad/s2, determine o tempo necessário para B atingir velocidades angulares entre 20 e 50 rad/s com incremento de 10 rad/s.')
RA=0.025 % Raio em m da engrengagem A.
RB=0.100 % Raio em m da engrengagem B.
aA=2 % Aceleração angular em rad/s² de A.
aB=aA*(RA/RB); % Aceleração angular em rad/s² de B.
%tn=Wj/aB; aonde Wj varia de 10 rad/s em 10 rad/s entre os valores de 20
%rad/s e 50 rad/s
t1=20/aB;
t2=30/aB;
t3=40/aB;
t4=50/aB;
disp('6)As respostas do exercício 6 da lista 3 são : ') 
disp( ' O tempo necessário em s para B atingir velocidades angulares de W=20 rad/s é (t1) = ');
disp (t1) %resposta exercício 6 da lista 3.
disp( ' O tempo necessário em s para B atingir velocidades angulares de W=30 rad/s é (t2) = ');
disp (t2) %resposta exercício 6 da lista 3.
disp( ' O tempo necessário em s para B atingir velocidades angulares de W=40 rad/s é (t3) = ');
disp (t3) %resposta exercício 6 da lista 3.
disp( ' O tempo necessário em s para B atingir velocidades angulares de W=50 rad/s é (t4) = ');
disp (t4) %resposta exercício 6 da lista 3.