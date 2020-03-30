%(4) A força P necessária para gerar o momento M no ponto A no sistema pistão-biela 
%    da figura abaixo, ocasiona uma tensão normal média no centro das hastes AB e BD de 58 MPa e 
%    75 MPa, respectivamente. Considerando a utilização de materiais das hastes com módulo 
%    de elasticidade variando entre 200 e 250 GPa com incremento de 2 GPa, 
%    plotar o gráfico E (MPa) x ?L (mm) para cada haste.

%    Fazendo o teorema de pitágoras encontra-se que LAB=100mm e
%    LDB=208.8061mm.
TenNormaLAB= 58                  % Tensão normal média em [MPa] no centro da haste AB.
TenNormaLDB= 75                  % Tensão normal média em [MPa] no centro da haste DB.
LAB=100                          % Comprimento em [mm] das haste AB.
LDB=208.8061                     % Comprimento em [mm] das haste DB.
E=[200000:2000:250000]           % O vetor módulo de elásticidade variando de 2 em 2 entre 200 a 250.
DeltaLAB=(LAB.*TenNormaLAB)./E;
DeltaLDB=(LDB.*TenNormaLDB)./E;
plot(E,DeltaLAB,'g-',E,DeltaLDB,'r-'); %
xlabel('E (MPa)'); ylabel('DeltaL (mm)');
legend('Haste AB','Haste BD');