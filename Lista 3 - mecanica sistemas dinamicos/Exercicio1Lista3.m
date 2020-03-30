% Este programa retorna a resposta do exercício 1 da lista 3.
disp('1) Quando um motor elétrico é ligado, ele alcança uma rotação nominal de 2400 rpm em 4 s. Quando desligado, o motor livre atinge o repouso em 40 s. Admitindo um movimento uniformemente acelerado, determine o número de rotações que o motor executa (a) para alcançar a rotação nominal e (b) para atingir o repouso.')
V1=2400 % Rotação nominal em rpm.
Vi=0 % velocidade inicial em rotações/s.
V2=V1/60; % convertendo rpm em rotações/s.
Vf=V2  % velocidade em rotação/s
t1=4;   % tempo  em s para alcançar a rotação nominal.
a=Vf/t1 % aceleração em rotação/s.s
t=0; % tempo inicial
Vs=0;
n=0;
while t<5
   V= Vi + a*t; % velocidade a cada instante antes de chegar a 2400 rpm.
   t=t+1;
   n=n+1;
   Vs=Vs+V; % soma das velocidas instântaneas
end
Vasoma=Vs % Soma das velocidades instântanes.
DeltaT=t1 % variação em s entre o tempo inicial e o tempo final quando ele alcança a rotação nominal.
nat=n  % Número de velocidades instântaneas.
rt=(Vasoma/nat)*DeltaT; % Números de rotação que o motor elétrico dá para alcançar a rotação nominal.
V1b=2400 % Rotação nominal em rpm.
Vfb=0 % velocidade inicial em rotações/s.
V2b=V1b/60; % convertendo rpm em rotações/s.
Vib=V2b  % velocidade em rotação/s
t1b=40;   % tempo  em s para alcançar a rotação nominal.
ab=-Vib/t1b % aceleração em rotação/s.s
tb=0; % tempo inicial
Vsb=0;
nb=0;
while tb<41
   V = Vib + ab*tb; % velocidade a cada instante antes de chegar a 2400 rpm.
   nb=nb+1;
   tb=tb+1;
   Vsb=Vsb+V; % soma das velocidas instântaneas
end
Vbsoma=Vsb % Soma das velocidades instântanes.
DeltaT=t1b % variação em s entre o tempo inicial e o tempo final quando ele alcança a rotação nominal.
nbt=nb  % Número de velocidades instântaneas.
rtb=(Vbsoma/nbt)*DeltaT; % Números de rotação que o motor elétrico dá para alcançar a rotação nominal.
disp('1)A resposta do exercício 1 da lista 3 é : ')
disp('A reposta da letra a) é : ')
disp('O número de rotações que o motor executa (a) para alcançar a rotação nominal é (Rt) = ')
disp(rt) %resposta da letra a) do exercício 1 da lista 3
disp('A reposta da letra b) é : ')
disp('O número de rotações que o motor executa (b) para atingir o repouso é (Rt) = ')
disp(rtb) %resposta da letra b) do exercício 1 da lista 3.