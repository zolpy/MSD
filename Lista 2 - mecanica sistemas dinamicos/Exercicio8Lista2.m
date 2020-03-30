% Este programa retorna a resposta do exercício 8 da lista 2.
disp('8) Uma furadeira possui quatro conjuntos de polias (A, B, C e D). Determinar a rotação da broca para cada conjunto, partindo da correia em A, conforme mostrado na figura.')
n1=600; %Rotação do motor em rpm.
DA1=60 ;%Diâmetro da polia A1 em mm.
DB1=100 ;%Diâmetro da polia B1 em mm.
DC1=140; %Diâmetro da polia C1 em mm.
DD1=200 ;%Diâmetro da polia D1 em mm.
DA2=200 ;%Diâmetro da polia A1 em mm.
DB2=150 ;%Diâmetro da polia B1 em mm.
DC2=100 ;%Diâmetro da polia C1 em mm.
DD2=60 ;%Diâmetro da polia D1 em mm.
disp('8)As respostas do exercício 8 da lista 2 são :') 
disp('A rotação da broca em rpm para o conjunto A é (nA) = ')
disp((n1*DA1)/DA2) %1° resposta do exercício 8 da lista 2.
disp('A rotação da broca em rpm para o conjunto B é (nB) = ')
disp((n1*DB1)/DB2) %2° resposta do exercício 8 da lista 2.
disp('A rotação da broca em rpm para o conjunto C é (nC) = ')
disp((n1*DC1)/DC2) %3° resposta do exercício 8 da lista 2.
disp('A rotação da broca em rpm para o conjunto D é (nD) = ')
disp((n1*DD1)/DD2) %4° resposta do exercício 8 da lista 2.