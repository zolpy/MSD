% Este programa retorna a resposta do exerc�cio 22 da lista 1.
disp('22)Para os trens de engrenagens abaixo, calcular a rota��o de B, sabendo que A � motora e gira a: a)400rpm e b) 260rpm')
NA=400   %rota��o em rpm.
ZA=30 % n�meros de dentes.
ZB=40 % n�meros de dentes.

disp('22)A resposta da letra a) do exerc�cio 22 da lista 1 � : a rota��o em rpm de B (NB)=')
disp((NA*ZA)/ZB) %resposta a)do exerc�cio 22 da lista 1.

NA=260   %rota��o em rpm.
ZA=80  % n�meros de dentes da engrenagem motora 1.
ZB=40  % n�meros de dentes da engrenagem movida 1.
Z2= 52   %n�meros de dentes da engrenagem movida 1.
Z3= 64    %n�meros de dentes da engrenagem motora 2.
movida=Z2*ZB;
motora=ZA*Z3;
i=movida/motora % redu��o total do sistema.

disp('22)A resposta da letra b) do exerc�cio 22 da lista 1 � : a rota��o em rpm de B (NB)=')
disp(NA/i) %resposta b)do exerc�cio 22 da lista 1.
