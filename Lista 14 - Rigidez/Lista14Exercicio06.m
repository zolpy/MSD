%6. Plotar o gráfico no Matlab da frequência de vibração do sistema em função do tempo,
%considerando k e m como valores de entrada e sabendo-se que:
clear all
close all
clc
disp('|***********************************************************|');
disp('|      Concluir em relação à rigidez em ambas situações     |');
disp('|     Observando os resultados gráficos (exercício 3 e 4)   |');
disp('|***********************************************************|');
k = 700/6;
w = sqrt(k/10);
t = 0:1:100; %eixo do x
x = 5*cos(w*t);
plot(t,x)
title('Ultimo gráfico do periodo');
ylabel ('x (m)');
xlabel ('Tempo (s)');
grid on;
disp('|***********************************************************|');
disp('| Foi bom está com vocês, mas agora é trempo de ir, eu fui!!|');
disp('|***********************************************************|');