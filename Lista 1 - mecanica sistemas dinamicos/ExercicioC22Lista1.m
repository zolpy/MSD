% Este programa retorna a resposta do exercício 22 da lista 1.
disp('22)Para os trens de engrenagens abaixo, calcular a rotação de B, sabendo que A é motora e gira a: a)400rpm e b) 260rpm')
NA=400   %rotação em rpm.
ZA=30 % números de dentes.
ZB=40 % números de dentes.

disp('22)A resposta da letra a) do exercício 22 da lista 1 é : a rotação em rpm de B (NB)=')
disp((NA*ZA)/ZB) %resposta a)do exercício 22 da lista 1.

NA=260   %rotação em rpm.
ZA=80  % números de dentes da engrenagem motora 1.
ZB=40  % números de dentes da engrenagem movida 1.
Z2= 52   %números de dentes da engrenagem movida 1.
Z3= 64    %números de dentes da engrenagem motora 2.
movida=Z2*ZB;
motora=ZA*Z3;
i=movida/motora % redução total do sistema.

disp('22)A resposta da letra b) do exercício 22 da lista 1 é : a rotação em rpm de B (NB)=')
disp(NA/i) %resposta b)do exercício 22 da lista 1.
