% Este programa retorna a resposta do exerc�cio 16 da lista 1.
disp('16) Sabendo-se que o di�metro externo de uma engrenagem cil�ndrica � de 88 mm e que ela tem 20 dentes, calcule o m�dulo, os di�metros primitivo e interno, a altura do dente e o passo.')
Z=20 % n�meros de dentes.
de=88 %di�metro externo em mm.
disp('16)As respostas do exerc�cio 16 da lista 1 s�o :')
disp('o m�dulo da engrenagem cil�ndrica ')
disp(de/(Z+2)) %1� resposta do exerc�cio 16 da lista 1.
disp('o di�metro primitivo em mm da engrenagem cil�ndrica (dp) =')
m=de/(Z+2);
disp(de-2*m) %2� resposta do exerc�cio 16 da lista 1.
disp('o di�metro interno em mm da engrenagem cil�ndrica (di) =')
disp(m*(Z-2.33)) %3� resposta do exerc�cio 16 da lista 1.
disp('a altura total em mm da engrenagem cil�ndrica (h) =')
disp(2.166*m) %4� resposta do exerc�cio 16 da lista 1.
disp('o passo em mm da engrenagem cil�ndrica (p) =')
disp(m*pi) %5� resposta do exerc�cio 16 da lista 1.