%Lista de exercícios nº 7

%1. Para cada estado de tensão abaixo, calcular o valor das tensões 
%   principais e do ângulo teta.

fiX=input('Digite o valor de fiX: ')%-------------------------------Entrada de fiX
fiY=input('Digite o valor de fiY: ')%-------------------------------Entrada de fiY
talXY=input('Digite o valor de talXY: ')%-------------------------------Entrada de talXY
%---SE FOSSE COLOCAR OS DADOS DIRETOS SEM O USUARIO TER QUE INSERIR DADDOS---%
%fiX=50; TRAÇAO (positivo)
%fiY=-10; COMPRESSAO (negativo)
%talXY=40; CANTO SUPERIOR DIREITO (positivo)
%--------------FIM DOS DADOS DIRETOS---------------%
angulo=talXY/((fiX-fiY)/2);%--------------------------------------CALCULO DO ANGULO
doisteta=atand(angulo);%------------------------------------------te dar em radianos direto E calcula 2teta
teta=doisteta/2;%-------------------------------------------------calcula teta
%------------------ Uma condição caso o angulo seja negativo ------------%
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
fprintf('Ângulo teta em graus é: %.3f°\n',teta); 
fprintf('Ângulo teta somado com 90° é: %.3f°\n',teta90);
fprintf('Tensão principal 1 é: %.3f MPa\n',fi1); 
fprintf('Tensão principal 2 é: %.3f MPa\n',fi2); 
disp('-------FIM DO DETALHAMENTO DAS RESPOSTAS-----------')