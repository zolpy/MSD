% Este programa retorna a resposta do exerc�cio 1 da lista 3.
disp('1) Quando um motor el�trico � ligado, ele alcan�a uma rota��o nominal de 2400 rpm em 4 s. Quando desligado, o motor livre atinge o repouso em 40 s. Admitindo um movimento uniformemente acelerado, determine o n�mero de rota��es que o motor executa (a) para alcan�ar a rota��o nominal e (b) para atingir o repouso.')
V1=2400 % Rota��o nominal em rpm.
Vi=0 % velocidade inicial em rota��es/s.
V2=V1/60; % convertendo rpm em rota��es/s.
Vf=V2  % velocidade em rota��o/s
t1=4;   % tempo  em s para alcan�ar a rota��o nominal.
a=Vf/t1 % acelera��o em rota��o/s.s
t=0; % tempo inicial
Vs=0;
n=0;
while t<5
   V= Vi + a*t; % velocidade a cada instante antes de chegar a 2400 rpm.
   t=t+1;
   n=n+1;
   Vs=Vs+V; % soma das velocidas inst�ntaneas
end
Vasoma=Vs % Soma das velocidades inst�ntanes.
DeltaT=t1 % varia��o em s entre o tempo inicial e o tempo final quando ele alcan�a a rota��o nominal.
nat=n  % N�mero de velocidades inst�ntaneas.
rt=(Vasoma/nat)*DeltaT; % N�meros de rota��o que o motor el�trico d� para alcan�ar a rota��o nominal.
V1b=2400 % Rota��o nominal em rpm.
Vfb=0 % velocidade inicial em rota��es/s.
V2b=V1b/60; % convertendo rpm em rota��es/s.
Vib=V2b  % velocidade em rota��o/s
t1b=40;   % tempo  em s para alcan�ar a rota��o nominal.
ab=-Vib/t1b % acelera��o em rota��o/s.s
tb=0; % tempo inicial
Vsb=0;
nb=0;
while tb<41
   V = Vib + ab*tb; % velocidade a cada instante antes de chegar a 2400 rpm.
   nb=nb+1;
   tb=tb+1;
   Vsb=Vsb+V; % soma das velocidas inst�ntaneas
end
Vbsoma=Vsb % Soma das velocidades inst�ntanes.
DeltaT=t1b % varia��o em s entre o tempo inicial e o tempo final quando ele alcan�a a rota��o nominal.
nbt=nb  % N�mero de velocidades inst�ntaneas.
rtb=(Vbsoma/nbt)*DeltaT; % N�meros de rota��o que o motor el�trico d� para alcan�ar a rota��o nominal.
disp('1)A resposta do exerc�cio 1 da lista 3 � : ')
disp('A reposta da letra a) � : ')
disp('O n�mero de rota��es que o motor executa (a) para alcan�ar a rota��o nominal � (Rt) = ')
disp(rt) %resposta da letra a) do exerc�cio 1 da lista 3
disp('A reposta da letra b) � : ')
disp('O n�mero de rota��es que o motor executa (b) para atingir o repouso � (Rt) = ')
disp(rtb) %resposta da letra b) do exerc�cio 1 da lista 3.