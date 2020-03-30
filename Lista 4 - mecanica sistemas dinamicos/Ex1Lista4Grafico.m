%(1) V�rias barras cil�ndricas maci�as s�o soldadas e est�o engastadas no 
%    Elemento n, sujeitas a uma carga P (a ser fornecida pelo usu�rio, em N), 
%    conforme indicado na figura. Elaborar uma programa que fornece a tens�o normal
%    no ponto m�dio de cada barra, sendo dn = 50 mm e d1 = 30 mm e, com decremento 
%    de 1 mm no di�metro. Plotar o gr�fico Tens�o (MPa) x Di�metro (mm).
%    Como Tens�o tens�o=P/A aonde A=pi*d�/4, logo tens�o=P/(pi*d�/4).

disp('(1)Os diametros de 50 a 30 com decremeto de 1 s�o [d]: ');
d=50:-1:30 
P=input('Digite o peso P em Newtons : '); 
TenNormal=4.*P./(pi.*(d.^2)); 
plot(TenNormal,d,'g-');
xlabel('Tens�o Normal [MPa] ');
ylabel('Di�metro [mm]'); 
disp('----------------------------------------------------------------');