% Este programa retorna a resposta do exercício 9 da lista 2.
disp('9) Determinar a redução de uma esteira transportadora, considerando os seguintes dados: • Motor elétrico de 3600 rpm, com acoplamento direto entre motor/redutor eredutor/carga; • Rotação do eixo da esteira de 60 rpm.')
nA=3600 %Rotação do motor em rpm.
nB=60 %Rotação do eixo da esteira em rpm.
i=rats(nA/nB) %redução do sistema.
[n,d] = numden(sym(i))
disp('9)A resposta do exercício 9 da lista 2 é : a redução de uma esteira transportadora é (imotor/icarga) = ')
disp(n);  %resposta exercício 9 da lista 2.
disp(':');%resposta exercício 9 da lista 2.
disp(d);%resposta exercício 9 da lista 2.