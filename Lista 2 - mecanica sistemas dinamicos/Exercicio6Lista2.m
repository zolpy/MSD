% Este programa retorna a resposta do exerc�cio 6 da lista 2.
disp('6) No sistema de transmiss�o por quatro polias representadas abaixo, o eixo motor desenvolve n1 = 2000 rpm. Os di�metros das polias medem: D1 = 100 mm, D2 = 200 mm, D3 = 70 mm e D4 = 300 mm. Determine a rota��o final n4 do sistema.')
D1=100 % Di�metro da polia 1 em mm.
D2=200 % Di�metro da polia 2 em mm.
D3=70 % Di�metro da polia 3 em mm.
D4=300 % Di�metro da polia 4 em mm.
n1=2000 % Rota��o do eixo do motor.
n2=((n1*D1)/D2);
n3=n2;
n4=((n3*D3)/D4);
disp('6)A resposta do exerc�cio 6 da lista 2 � : a rota��o final n4 do sistema em rpm � (n4) = ')
disp(n4) %resposta exerc�cio 6 da lista 2.