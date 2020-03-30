% Este programa retorna a resposta do exercício 7 da lista 2.
disp('7) O conjunto de polias redutoras abaixo tem o diâmetro da polia motora no 1º estágio igual a 100 mm e rotação de 1500 rpm, determinar a rotação da polia movida do 2º estágio, cujo diâmetro é de 200 mm.')
D1=100 % Diâmetro da polia 1 em mm.
D2=150 % Diâmetro da polia 2 em mm.
D3=50 % Diâmetro da polia 3 em mm.
D4=200 % Diâmetro da polia 4 em mm.
n1=1500 % Rotação no primeiro estágio.
n2=((n1*D1)/D2);
n3=n2;
n4=((n3*D3)/D4);
disp('7)A resposta do exercício 7 da lista 2 é : a rotação em rpm da polia movida do 2º estágio, cujo diâmetro é de 200 mm é (n4)= ')
disp(n4) %resposta exercício 7 da lista 2.
