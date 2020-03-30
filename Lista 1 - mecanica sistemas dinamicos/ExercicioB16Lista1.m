% Este programa retorna a resposta do exercício 16 da lista 1.
disp('16) Sabendo-se que o diâmetro externo de uma engrenagem cilíndrica é de 88 mm e que ela tem 20 dentes, calcule o módulo, os diâmetros primitivo e interno, a altura do dente e o passo.')
Z=20 % números de dentes.
de=88 %diâmetro externo em mm.
disp('16)As respostas do exercício 16 da lista 1 são :')
disp('o módulo da engrenagem cilíndrica ')
disp(de/(Z+2)) %1º resposta do exercício 16 da lista 1.
disp('o diâmetro primitivo em mm da engrenagem cilíndrica (dp) =')
m=de/(Z+2);
disp(de-2*m) %2º resposta do exercício 16 da lista 1.
disp('o diâmetro interno em mm da engrenagem cilíndrica (di) =')
disp(m*(Z-2.33)) %3º resposta do exercício 16 da lista 1.
disp('a altura total em mm da engrenagem cilíndrica (h) =')
disp(2.166*m) %4º resposta do exercício 16 da lista 1.
disp('o passo em mm da engrenagem cilíndrica (p) =')
disp(m*pi) %5º resposta do exercício 16 da lista 1.