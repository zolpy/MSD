%2. No suporte da figura abaixo, uma resina resistente foi usada para colar as partes inferior
% e superior da haste ABC no ponto B. Qual a variação do diâmetro dos pinos em A, C e D
% sabendo-se que todos possuem a mesma dimensão, para tensões de cisalhamento entre 40 e 60 MPa.
disp('-----------------------------2.RESPOSTA-----------------------------');
TenCis=40:60;
FD=((2200*15)/35);
FCA=((2200*50)/35);
% Calcula da area 
Ad=FD./TenCis;
Aa=FCA./TenCis;
Ac=((FCA/2)./TenCis);
% Calculo do diametro
da=sqrt((4.*Aa)./pi);
dc=sqrt((4.*Ac)./pi);
dd=sqrt((4.*Ad)./pi);
disp('A variação do diâmetro A em mm deve estar entre : ');
disp(da(21));
disp('        e           ');
disp(da(1));
disp('A variação do diâmetro C em mm deve estar entre : ');
disp(dc(21));
disp('        e           ');
disp(dc(1));
disp('A variação do diâmetro D em mm deve estar entre : ');
disp(dd(21));
disp('        e           ');
disp(dd(1));
disp('---------------------------------------------------------------------');


