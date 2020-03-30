% Este programa retorna a resposta do exercício 6 da lista 2.
disp('6) No sistema de transmissão por quatro polias representadas abaixo, o eixo motor desenvolve n1 = 2000 rpm. Os diâmetros das polias medem: D1 = 100 mm, D2 = 200 mm, D3 = 70 mm e D4 = 300 mm. Determine a rotação final n4 do sistema.')
D1=100 % Diâmetro da polia 1 em mm.
D2=200 % Diâmetro da polia 2 em mm.
D3=70 % Diâmetro da polia 3 em mm.
D4=300 % Diâmetro da polia 4 em mm.
n1=2000 % Rotação do eixo do motor.
n2=((n1*D1)/D2);
n3=n2;
n4=((n3*D3)/D4);
disp('6)A resposta do exercício 6 da lista 2 é : a rotação final n4 do sistema em rpm é (n4) = ')
disp(n4) %resposta exercício 6 da lista 2.