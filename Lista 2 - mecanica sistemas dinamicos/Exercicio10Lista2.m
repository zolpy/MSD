% Este programa retorna a resposta do exerc�cio 10 da lista 2.
disp('10) Determinar a redu��o necess�ria do motor de um elevador de cargas, sendo dado: � Motor el�trico de 1750 rpm, com redu��o por polias entre motor/redutor, sendo os di�metros da polia motora e movida, de 10 cm e 20 cm, respectivamente; � Velocidade de deslocamento da carga de 31,4 m/min; � Di�metro do tambor: 200 mm;')
NA=1750 %Rota��o do motor em rpm.
D1=10 % Di�metro da polia 1 em cm.
D2=20 % Di�metro da polia 2 em cm.
Dtambor=0.2 % Di�metro do tambor em m.
VDsl=31.4 % Velocidade de deslocamento da carga em m/min;
NB=((NA*D1)/D2)
N=(VDsl/(Dtambor*pi))
iT=(NB/N)
disp('10)A resposta do exerc�cio 10 da lista 2 � : a redu��o necess�ria do motor de um elevador de cargas (NB/N) = ')
disp(iT);  %resposta exerc�cio 10 da lista 2.
disp('      :     ');%resposta exerc�cio 10 da lista 2.
disp(1);%resposta exerc�cio 10 da lista 2.
