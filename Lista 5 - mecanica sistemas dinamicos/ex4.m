%4. Qual o novo diâmetro do pino A (exercício 3) para o máximo
% valor de P? 
disp('-----------------------------4.RESPOSTA-----------------------------');
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
%(Somatorio)B=0 -> FA*200=180*FC
%FA=((180/200)*FC) / TenAdm=FA/AreaA
%TenAdm*AreaA = ((180/200)*FC)
%AreaA=((180/200)*FC)/TenAdm) sendo AreaA = ((pi*dA^2)/4)
dA=sqrt(4*((180*FC)/(200*TenAdm*pi)));
disp('O novo diametro de A é: ');
disp(dA)
disp('---------------------------------------------------------------------');
