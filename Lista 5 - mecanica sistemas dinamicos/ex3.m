%3. No mecanismo mostrado na figura, um pino de 8 mm de diâmetro é usado  em A e outro 
%   pino de 12 mm de diâmetro é usado em B e D. Sabendo-se que a tensão última de 
%   cisalhamento em todas as conexões não deva ultrapassar a 100 MPa, determinar o máximo 
%   valor de P para que esta condição seja respeitada, considerando FS =  3 e somente cisalhamento.
%   Como Tensão tensãoNormal=F/A aonde A=pi*d^2/4, logo tensãoAdmissional=F/(pi*d^2/4).
disp('-----------------------------3.RESPOSTA-----------------------------');
FS=3;                %FAtor de segurança 
DA=8; %[mm]
DB=12;%[mm]
DD=12;%[mm]
TenUltima=100;%[MPa] Tensão Ultima de cisalhamento 
%TenUltima=Fs*TenAdm
%Peso?
TenAdm=TenUltima/FS;
%Momento No ponto A;
%(Somatorio)A->FC*380=F*200 -> FC=((200*F)/380) onde F tem duas hastes F=2FB
AreaB=((DB^2*pi)/4);
FB=TenAdm*AreaB;
FC=((200*2*FB)/380);
disp('O máximo valor de P para que esta condição seja respeitada, ')
disp(' considerando FS =  3 e somente cisalhamento é: ')
disp(FC);
disp('---------------------------------------------------------------------');




