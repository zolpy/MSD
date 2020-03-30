%(4) A for�a P necess�ria para gerar o momento M no ponto A no sistema pist�o-biela 
%    da figura abaixo, ocasiona uma tens�o normal m�dia no centro das hastes AB e BD de 58 MPa e 
%    75 MPa, respectivamente. Considerando a utiliza��o de materiais das hastes com m�dulo 
%    de elasticidade variando entre 200 e 250 GPa com incremento de 2 GPa, 
%    plotar o gr�fico E (MPa) x ?L (mm) para cada haste.

%    Fazendo o teorema de pit�goras encontra-se que LAB=100mm e
%    LDB=208.8061mm.
TenNormaLAB= 58                  % Tens�o normal m�dia em [MPa] no centro da haste AB.
TenNormaLDB= 75                  % Tens�o normal m�dia em [MPa] no centro da haste DB.
LAB=100                          % Comprimento em [mm] das haste AB.
LDB=208.8061                     % Comprimento em [mm] das haste DB.
E=[200000:2000:250000]           % O vetor m�dulo de el�sticidade variando de 2 em 2 entre 200 a 250.
DeltaLAB=(LAB.*TenNormaLAB)./E;
DeltaLDB=(LDB.*TenNormaLDB)./E;
plot(E,DeltaLAB,'g-',E,DeltaLDB,'r-'); %
xlabel('E (MPa)'); ylabel('DeltaL (mm)');
legend('Haste AB','Haste BD');