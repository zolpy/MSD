%3. Determine as equações da linha elástica para o eixo utilizando as coordenadas x1  e x3.
%Especifique a inclinação em A e a deflexão no centro do eixo. A viga é feita de aço A-36
%(E=200 [Gpa]) e tem perfil W310x39 (I=84,4.106 [mm4]). Trace o gráfico v(x) versus x
%(escolha valores para P, ae b)
clear all
close all
clc
disp('|*******************************************************|');
disp('|      Determine as equações da linha elastica          |');
disp('|   para o eixo utilizando as coodenadas x1 e x3        |');
disp('|*******************************************************|');
fprintf('Exercicio 3\n');
E=200e9;
I=84.4e-6;
c=1;
Peso=input('Entre com o valor do Peso [N]: ');
P=Peso*1e6;
a=input('Digite o valor de a: ');
b=input('Digite o valor de b: ');
TamanhoBarra=2*a+b;
x1=input('Digite x1: \n');
while x1>a;
    clc
    disp('|*******************************************************|');
    disp('|      Determine as equações da linha elastica          |');
    disp('|   para o eixo utilizando as coodenadas x1 e x3        |');
    disp('|*******************************************************|');
    fprintf(' a: %0.2f\n',a);
    fprintf(' b: %0.2f\n',b);
    disp('ERRO\n');
    disp('O valor para x1 tem que ser menor do que (a).');
    x1=input('Digite o valor de x1: \n');
    
end
x3=input('Digite x3: ');
while x3>b;
    clc
    disp('|*******************************************************|');
    disp('|      Determine as equações da linha elastica          |');
    disp('|   para o eixo utilizando as coodenadas x1 e x3        |');
    disp('|*******************************************************|');
    fprintf(' a: %0.2f\n',a);
    fprintf(' b: %0.2f\n',b);
    fprintf(' x1: %0.2f\n',x1);
    disp('ERRO\n');
    disp('O valor para x3 tem que ser menor do que (b).');
    x3=input('Digite o valor de x3: \n');
    
end

%E*I*D^2v/dx^2=M(x);
Mx1=-P*x1;
%E*I*D^2v1/dx1^2=-Px1);
%E*I*Dv1/dx1=-P/2(x1)^2+c1); [1]
%E*I*v1=-P/6(x1)^3+c1x+c2);  [2]
Mx3=-P*a;
%E*I*D^2(v3)/d(x3)^2=-Pa;
%E*I*D(v3)/d(x3)=-Pa(x3)+(C3); [3]
%E*I*v3=-Pa/2(x3)^3+c3x3+c4);  [4]
%CONDIÇÕES DE CONTORNO
%----------v1=0 e x1=a
%[2]-> 0=-Pa^3/6+C1a+C2;
%[3]-> Dv3/dx3=0 ->x3=b/2 
% 0=Pa(b/2)+C3;
C3=(P*a*b)/2;
%----------v3=0 e x3=0
%[4] C4=0;
%CONDIÇÕES DE CONTINUIDADE
%-----------x1=a e x3=0
%das equações [1] e [3] dv1/dx1=dv3/dx3
%-Pa^2/2 +C1=Pab/2 -> C1=((P*a)/2)*(a+b);
C1=((P*a)/2)*(a+b);
%Da equação[5] C2=((-Pa^2)/6)(2a+3b)
C2=(((-P*a^2)/6)*(2*a+3*b));
%A INCLINAÇÃO
%substituir C1 na equação [1] x1=a tetaA=Dv1/dx1
TetaA=((P*a*b)/(2*E*I));
%CURVA ELASTICA -> SUBSTITUIR C1,C2,C3 E C4 NAS 
%EQUAÇÕES [2] E [4]
v1=(((P./6*E*I)*((-x1)^3+(3*a*(a+b))*x1-(a)^2*(2*a+3*b))));
v3=((((P*a*x3)./(2*E*I))*(-x3+b)));
%Vc=v3|x3=b/2 -> (Pa(b/2))/2EI(-b/2+b)=Pab^2/8EI->Vc=((P*a*b^2)/8*E*I);
Vc=((P*a*b^2)/8*E*I);
fprintf('O valor de V1 = %0.2f [MPA]\n',v1);
fprintf('O valor de V3 = %0.2f [MPA]\n',v3);  
fprintf('O valor de VC = %0.2f [MPA]\n',Vc);
fprintf('O valor do angulo é = %0.2f [°]\n',TetaA);
%------------Grafico---------------------------
x1=[0:1:TamanhoBarra];
for x=0:0.1:a
V1(c)=(-5000*x^3 + 750e3*x - 3125e3)/(E*I);
X(c)= x;
c = c+1;
end

c = 1;
for x=0:0.1:a/2
V2(c)=(+5000*x^3 - 15000*5*x^2 + 375000*x)/(E*I);
A(c)=x+5;
c=c+1;
end

figure
plot(x1,0*x1,'r-',X,V1,'b:',A,V2,'b:')
title('Gráfico v(x) versus x');
xlabel('Tamanho da Barra [m]');
ylabel('Força cortante');
grid;