%Lista de exerc�cios n� 7

%1. Para cada estado de tens�o abaixo, calcular o valor das tens�es 
%   principais e do �ngulo teta.

fiX=input('Digite o valor de fiX: ')%-------------------------------Entrada de fiX
fiY=input('Digite o valor de fiY: ')%-------------------------------Entrada de fiY
talXY=input('Digite o valor de talXY: ')%-------------------------------Entrada de talXY
%---SE FOSSE COLOCAR OS DADOS DIRETOS SEM O USUARIO TER QUE INSERIR DADDOS---%
%fiX=50; TRA�AO (positivo)
%fiY=-10; COMPRESSAO (negativo)
%talXY=40; CANTO SUPERIOR DIREITO (positivo)
%--------------FIM DOS DADOS DIRETOS---------------%
angulo=talXY/((fiX-fiY)/2);%--------------------------------------CALCULO DO ANGULO
doisteta=atand(angulo);%------------------------------------------te dar em radianos direto E calcula 2teta
teta=doisteta/2;%-------------------------------------------------calcula teta
%------------------ Uma condi��o caso o angulo seja negativo ------------%
if (teta < 0)
    teta90=teta+90;
else
        teta
    end
%teta_graus=((teta*180)/pi)
fi1=(((fiX+fiY)/2)+sqrt(((fiX-fiY)/2)^2 + talXY^2));
fi2=(((fiX+fiY)/2)-sqrt(((fiX-fiY)/2)^2 + talXY^2));
%fiXLinha=(((fiX+fiY)/2)+ ((fiX-fiY)/2)*cos (2a) + talXY*sen (2a))
disp('-----------------RESPOSTAS-------------------------')
fprintf('�ngulo teta em graus �: %.3f�\n',teta); 
fprintf('�ngulo teta somado com 90� �: %.3f�\n',teta90);
fprintf('Tens�o principal 1 �: %.3f MPa\n',fi1); 
fprintf('Tens�o principal 2 �: %.3f MPa\n',fi2); 
disp('-------FIM DO DETALHAMENTO DAS RESPOSTAS-----------')