% Este programa retorna a resposta do exercício 3 da lista 3.
disp('3) Um sistema redutor consiste em 4 engrenagens, conforme mostra a figura. Sabendo-se que a engrenagem A parte do repouso no instante t = 0 e gira em sentido horário com aceleração angular constante de ?A = 600 rpm, determine a velocidade linear do ponto C.')
W=600; % Velocidade angular em rpm da engrenagem A.
W1=W/60; % transformando rpm em rotações/s.
WA=W1  % Velocidade angular em rotações/s da engrenagem A.
Ra=0.050 % Raio em m da engrenagem A.
Rb=0.1  % Raio em m da engrenagem B.
Rc=0.15  % Raio em m da engrenagem C.
Rd=0.050  % Raio em m da engrenagem D.
Vc=(Rd/Rc)*(Ra/Rb)*WA*Rc; % Velocidade Linear em m/s no ponto C.
disp('3)A resposta do exercício 3 da lista 3 é : a velocidade linear em m/s do ponto C é (Vc) = ');
disp(Vc) %resposta exercício 3 da lista 3.
