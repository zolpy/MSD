%6. Plotar o gr�fico no Matlab da frequ�ncia de vibra��o do sistema em fun��o do tempo,
%considerando k e m como valores de entrada e sabendo-se que:
clear all
close all
clc
disp('|***********************************************************|');
disp('|      Concluir em rela��o � rigidez em ambas situa��es     |');
disp('|     Observando os resultados gr�ficos (exerc�cio 3 e 4)   |');
disp('|***********************************************************|');
k = 700/6;
w = sqrt(k/10);
t = 0:1:100; %eixo do x
x = 5*cos(w*t);
plot(t,x)
title('Ultimo gr�fico do periodo');
ylabel ('x (m)');
xlabel ('Tempo (s)');
grid on;
disp('|***********************************************************|');
disp('| Foi bom est� com voc�s, mas agora � trempo de ir, eu fui!!|');
disp('|***********************************************************|');