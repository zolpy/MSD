%Lista 5 
%exercicio 1 
%1. Determine a tens�o �ltima de cisalhamento no pino B, para pinos com di�metro entre 10
%  e 20 mm com incremento de 1 mm (considerar FS = 2,5). Plotar o gr�fico d(mm) x ?u(MPa).
disp('-----------------------------1.RESPOSTA-----------------------------');
dB=10:1:20;
FS=2.5;
Ab=((pi.*(dB.^2))/4);
FBr=(((20000*650)/400)/2);% duas astespor isso dividido por dois
TB=FBr./Ab;
Tult=TB*FS;% tens�o ultima
disp('-------/\------------------')
disp('----/\/  \ VIDE------------')  
disp('---/      \/   GRAFICO-----');
disp('-------------------by ZolPy')
plot(dB,Tult,'g-');
xlabel(' Diametro [mm]');
ylabel('Tens�o Ultima de Cisalhamento [MPa]'); 
disp('---------------------------------------------------------------------');

