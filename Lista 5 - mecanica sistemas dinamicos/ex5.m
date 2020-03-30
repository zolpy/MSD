% 5.Dois cilindros hidr�ulicos foram usados para controlar a posi��o da haste ABC.
% Sabendo-se que o pino A tem 20 mm de di�metro, determine a tens�o de cisalhamento neste pino.
disp('-----------------------------5.RESPOSTA-----------------------------');
dA=20; %[mm]
FC=800;
%TenCisalhamento=?
%TenAdm=F/AreaA
b=300;
c=400;
hip=sqrt(b^2+c^2);
tangente=(c/b);
t=atand(tangente);
%(somatorio)B=0
%FAy*150=FC*600  -> 
FAy=((600*FC)/(150));
FAY=FA*sin(t);
%FA*sen(53,13)=((600*FC)/150)
%FA=((600*FC)/(150*sen(53,13))
%AreaA=((dA^2*pi)/4)
%TenCisalhamento=F/AreaA
TenCisalhamento=((600*FC*4)/(150*sind(t)*dA^2*pi));
disp(' A tens�o de cisalhamento no pino A em [MPa]� de: ');
disp(TenCisalhamento);
disp('---------------------------------------------------------------------');

