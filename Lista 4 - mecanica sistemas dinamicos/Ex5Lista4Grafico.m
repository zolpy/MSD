%(5) Para o mecanismo mostrado abaixo (auxiliado pela vista lateral e superior), 
%    determinar os valores de máxima tensão nas hastes BD para P variando entre 1,75 e 3 kN com 
%    incremento de 0,05 kN. Considerar o furo para encaixe dos pinos das hastes com diâmetro de 6 mm. 
%    Plotar  o gráfico P (N) x Tensao BD (MPa).

%   Calculando o momento em A : P*380=200*F/
%   F=1.9*P / E como 2*FBD=F /  FDB=F/2.    A área é A=4*pi*(3)^2.

P=[1750:50:3000]        % Força no Ponto P em N.
F=1.9*P;                % A força das duas hastes iguais a haste BD + a a outra haste paralela e igual a ela. 
FBD=F/2;                % A força da haste BD em N.
A=4*pi*(3)^2            % A seção transversal da haste BD.
TenBD=FBD./A            % A tensão em MPa na haste BD.
plot(P,TenBD,'g-');
grid
xlabel('Força P (N)'); ylabel( 'TensãoBD (MPa)');