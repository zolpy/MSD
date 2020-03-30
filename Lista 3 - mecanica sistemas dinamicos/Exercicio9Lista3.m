% Este programa retorna a resposta do exercício 9 da lista 3.
disp('9) Partindo do repouso quando s = 0, a polia A tem aceleração angular constante de 6 rad/s2. Determine a velocidade linear do bloco B quando ele atingir as posições 1m ? S < 5m com incremento de 0.5 m, sabendo-se que a polia tem um cubo interno D que está fixo em C e gira com ela.')
aangularA=6  %Aceleração angular constante em rad/s² da polia A.
RA=0.05 % Raio em m da polia A.
RC=0.15 % Raio em m da polia C.
RD=0.075 % Raio em m do cubo interno D.
aangularC=aangularA*(RA/RB) %Aceleração angular constante em rad/s² da polia C.
atangencialC=aangularC*RC %Aceleração tangencial em m/s² da polia C.
%aangular=?/t² / S=So+V*t+atangencialt²/2 / S=0+0*t+atangencialt²/2
%t²=2*S/atangencial  / atangencial= aangular*R/ t=sqrt(2*S/(aangular*R))
%VB=V0+atangecial*t/VB=0+atangecial*sqrt(2*S/(aangular*R))/
%VB=atangecial*sqrt(2*S/(aangular*R))/ VB=atangecialC*sqrt(2*S/(aangularC*RD))
%VB=0.3*sqrt(2*S/(2*0.075))/VB=0.3*sqrt(2*S/(0.15))
%VB=0.3*sqrt(13.333333*S).

%A velocidade linear do bloco B quando ele atingir as posições 1m ? S < 5m com incremento de 0.5 m.
VB1=0.3*sqrt(13.333333*1);  % Velocidade linear em m/s do bloco B quando ele atingir a posição de 1 m.
VB1_5=0.3*sqrt(13.333333*1.5);  % Velocidade linear em m/s do bloco B quando ele atingir a posição de 1.5 m.
VB2=0.3*sqrt(13.333333*2);  % Velocidade linear em m/s do bloco B quando ele atingir a posição de 2 m.
VB2_5=0.3*sqrt(13.333333*2.5);  % Velocidade linear em m/s do bloco B quando ele atingir a posição de 2.5 m.
VB3=0.3*sqrt(13.333333*3);  % Velocidade linear em m/s do bloco B quando ele atingir a posição de 3 m.
VB3_5=0.3*sqrt(13.333333*3.5);  % Velocidade linear em m/s do bloco B quando ele atingir a posição de 3.5 m.
VB4=0.3*sqrt(13.333333*4);  % Velocidade linear em m/s do bloco B quando ele atingir a posição de 4 m.
VB4_5=0.3*sqrt(13.333333*4.5);  % Velocidade linear em m/s do bloco B quando ele atingir a posição de 4.5 m.
disp('9)As respostas do exercício 9 da lista 3 são :') 
disp('A Velocidade linear em m/s do bloco B quando ele atingir a posição de 1 m é (VB1) = ')
disp(VB1) %1° resposta do exercício 9 da lista 3.
disp('A Velocidade linear em m/s do bloco B quando ele atingir a posição de 1.5 m é (VB1.5) = ')
disp(VB1_5) %2° resposta do exercício 9 da lista 3.
disp('A Velocidade linear em m/s do bloco B quando ele atingir a posição de 2 m é (VB2) = ')
disp(VB2) %3° resposta do exercício 9 da lista 3.
disp('A Velocidade linear em m/s do bloco B quando ele atingir a posição de 2.5 m é (VB2.5) = ')
disp(VB2_5) %4° resposta do exercício 9 da lista 3.
disp('A Velocidade linear em m/s do bloco B quando ele atingir a posição de 3 m é (VB3) = ')
disp(VB3) %5° resposta do exercício 9 da lista 3.
disp('A Velocidade linear em m/s do bloco B quando ele atingir a posição de 3.5 m é (VB3.5) = ')
disp(VB3_5) %6° resposta do exercício 9 da lista 3.
disp('A Velocidade linear em m/s do bloco B quando ele atingir a posição de 4 m é (VB4) = ')
disp(VB4) %7° resposta do exercício 9 da lista 3.
disp('A Velocidade linear em m/s do bloco B quando ele atingir a posição de 4.5 m é (VB4.5) = ')
disp(VB4_5) %8° resposta do exercício 9 da lista 3.