% Este programa retorna a resposta do exerc�cio 7 da lista 2.
disp('7) O conjunto de polias redutoras abaixo tem o di�metro da polia motora no 1� est�gio igual a 100 mm e rota��o de 1500 rpm, determinar a rota��o da polia movida do 2� est�gio, cujo di�metro � de 200 mm.')
D1=100 % Di�metro da polia 1 em mm.
D2=150 % Di�metro da polia 2 em mm.
D3=50 % Di�metro da polia 3 em mm.
D4=200 % Di�metro da polia 4 em mm.
n1=1500 % Rota��o no primeiro est�gio.
n2=((n1*D1)/D2);
n3=n2;
n4=((n3*D3)/D4);
disp('7)A resposta do exerc�cio 7 da lista 2 � : a rota��o em rpm da polia movida do 2� est�gio, cujo di�metro � de 200 mm � (n4)= ')
disp(n4) %resposta exerc�cio 7 da lista 2.
