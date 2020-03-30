%3. No mecanismo mostrado na figura, um pino de 8 mm de di�metro � usado  em A e outro 
%   pino de 12 mm de di�metro � usado em B e D. Sabendo-se que a tens�o �ltima de 
%   cisalhamento em todas as conex�es n�o deva ultrapassar a 100 MPa, determinar o m�ximo 
%   valor de P para que esta condi��o seja respeitada, considerando FS =  3 e somente cisalhamento.
%   Como Tens�o tens�oNormal=F/A aonde A=pi*d^2/4, logo tens�oAdmissional=F/(pi*d^2/4).
disp('-----------------------------3.RESPOSTA-----------------------------');
FS=3;                %FAtor de seguran�a 
DA=8; %[mm]
DB=12;%[mm]
DD=12;%[mm]
TenUltima=100;%[MPa] Tens�o Ultima de cisalhamento 
%TenUltima=Fs*TenAdm
%Peso?
TenAdm=TenUltima/FS;
%Momento No ponto A;
%(Somatorio)A->FC*380=F*200 -> FC=((200*F)/380) onde F tem duas hastes F=2FB
AreaB=((DB^2*pi)/4);
FB=TenAdm*AreaB;
FC=((200*2*FB)/380);
disp('O m�ximo valor de P para que esta condi��o seja respeitada, ')
disp(' considerando FS =  3 e somente cisalhamento �: ')
disp(FC);
disp('---------------------------------------------------------------------');




