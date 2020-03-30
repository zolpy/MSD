%5. A figura a seguir mostra um acoplamento flexível tipo anel de borracha (r o= 7 cm, ri= 3
%cm e G = 600 N/mm²) unindo os dois eixos. Calcular a rigidez deste acoplamento, ao variar
%o valor de t entre 20 cm e 30 cm com incremento de 1 mm.
clear all
close all
clc
disp('|***********************************************************|');
disp('| Calcular a rigidez deste acoplamentos, ao variar o valor  |');
disp('| o valor de t entre 20 cm e 30 cm com incremento de 1 mm.  |');
disp('|***********************************************************|');
di = (0.03)*2;
de = (0.07)*2;
t = 0.2:0.001:0.3;
G = 600*1e6; %módulo de cisalhamento
J = (pi*((de^4)-(di^4)))/32;
k = (G*J)./t;
plot (t/1e-2,k)
title('Penultimo Gráfico do periodo 2012/2');
ylabel ('k (N.m)');
xlabel ('Diâmetro (cm)');
grid on;
disp('|***********************************************************|');
disp('|  Falta só uma semana para o ano novo de novo, Feliz 2013! |');
disp('|***********************************************************|');
