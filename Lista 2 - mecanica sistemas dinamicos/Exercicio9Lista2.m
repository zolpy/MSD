% Este programa retorna a resposta do exerc�cio 9 da lista 2.
disp('9) Determinar a redu��o de uma esteira transportadora, considerando os seguintes dados: � Motor el�trico de 3600 rpm, com acoplamento direto entre motor/redutor eredutor/carga; � Rota��o do eixo da esteira de 60 rpm.')
nA=3600 %Rota��o do motor em rpm.
nB=60 %Rota��o do eixo da esteira em rpm.
i=rats(nA/nB) %redu��o do sistema.
[n,d] = numden(sym(i))
disp('9)A resposta do exerc�cio 9 da lista 2 � : a redu��o de uma esteira transportadora � (imotor/icarga) = ')
disp(n);  %resposta exerc�cio 9 da lista 2.
disp(':');%resposta exerc�cio 9 da lista 2.
disp(d);%resposta exerc�cio 9 da lista 2.