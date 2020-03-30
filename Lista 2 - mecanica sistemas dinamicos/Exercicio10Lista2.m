% Este programa retorna a resposta do exercício 10 da lista 2.
disp('10) Determinar a redução necessária do motor de um elevador de cargas, sendo dado: • Motor elétrico de 1750 rpm, com redução por polias entre motor/redutor, sendo os diâmetros da polia motora e movida, de 10 cm e 20 cm, respectivamente; • Velocidade de deslocamento da carga de 31,4 m/min; • Diâmetro do tambor: 200 mm;')
NA=1750 %Rotação do motor em rpm.
D1=10 % Diâmetro da polia 1 em cm.
D2=20 % Diâmetro da polia 2 em cm.
Dtambor=0.2 % Diâmetro do tambor em m.
VDsl=31.4 % Velocidade de deslocamento da carga em m/min;
NB=((NA*D1)/D2)
N=(VDsl/(Dtambor*pi))
iT=(NB/N)
disp('10)A resposta do exercício 10 da lista 2 é : a redução necessária do motor de um elevador de cargas (NB/N) = ')
disp(iT);  %resposta exercício 10 da lista 2.
disp('      :     ');%resposta exercício 10 da lista 2.
disp(1);%resposta exercício 10 da lista 2.
