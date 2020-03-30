%(1) Várias barras cilíndricas maciças são soldadas e estão engastadas no 
%    Elemento n, sujeitas a uma carga P (a ser fornecida pelo usuário, em N), 
%    conforme indicado na figura. Elaborar uma programa que fornece a tensão normal
%    no ponto médio de cada barra, sendo dn = 50 mm e d1 = 30 mm e, com decremento 
%    de 1 mm no diâmetro. Plotar o gráfico Tensão (MPa) x Diâmetro (mm).
%    Como Tensão tensão=P/A aonde A=pi*d²/4, logo tensão=P/(pi*d²/4).

disp('(1)Os diametros de 50 a 30 com decremeto de 1 são [d]: ');
d=50:-1:30 
P=input('Digite o peso P em Newtons : '); 
TenNormal=4.*P./(pi.*(d.^2)); 
plot(TenNormal,d,'g-');
xlabel('Tensão Normal [MPa] ');
ylabel('Diâmetro [mm]'); 
disp('----------------------------------------------------------------');