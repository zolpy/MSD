% Este programa retorna a resposta do exerc�cio 10 da lista 3.
disp('10) Um gancho movimenta-se a partir do repouso com acelera��o de 20 p�s/s2. Se ele est� preso a uma corda enrolada no tambor, determine: a) o n�mero de revolu��es do tambor quando o gancho estiver em movimento at� 5 s com incremento de 1 segundo; b) a velocidade angular ap�s ? < 6 revolu��es. Dado: 1 p� = 30,48 cm.')
R=0.6096 % Raio em m do tambor.
at= 20; % Acelera��o tangencial do ganho em p�s/s�.
at1= 20*0.3048; % Transformando p�s/s� em m/s�
atangencial=at1 % Acelera��o tangencial do ganho em m/s�.
aangular=atangencial/R % Acelera��o angular do tambor em rad/s�.
%?=?o+Wo*t+(aangular*t�)/2 / ?=0+0*t+(aangular*t�)/2.
%?=(aangular*t�)/2 fazndo regra de 3 encontra-se
%?=(aangular*t�)/4*pi   / ?=(10*t�)/4*pi ?=(5*t�)/2*pi.

%O n�mero de revolu��es do tambor quando o gancho estiver em movimento at� 5 s com incremento de 1 segundo
revolucao1=((5*((1)^2))/(2*pi)); % O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 1s.
revolucao2=((5*((2)^2))/(2*pi)); % O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 2s.
revolucao3=((5*((3)^2))/(2*pi)); % O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 3s.
revolucao4=((5*((4)^2))/(2*pi)); % O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 4s.
revolucao5=((5*((5)^2))/(2*pi)); % O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 5s.
revolucao6=((5*((6)^2))/(2*pi)); % O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 6s.
revolucao7=((5*((7)^2))/(2*pi)); % O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 7s.
revolucao8=((5*((8)^2))/(2*pi)); % O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 8s.

%A velocidade angular.
%Como anterior mente t=sqrt(4*pi*? /aangular).
%W=Wo+aangular*t/ W=0+aangular*t/ W=aangular*t/ 
%W=aangular*sqrt(4*pi*? /aangular).
%W=10*sqrt(4*pi*? /10) /  W=10*sqrt(2*pi*? /5).

%A velocidade angular ap�s ? < 6 revolu��es.
W0=10*sqrt((2*pi*0)/5); % A velocidade angular em rad/s quando ? = 0 revolu��o.
W1=10*sqrt((2*pi*1)/5); % A velocidade angular em rad/s quando ? = 1 revolu��o.
W2=10*sqrt((2*pi*2)/5); % A velocidade angular em rad/s quando ? = 2 revolu��es.
W3=10*sqrt((2*pi*3)/5); % A velocidade angular em rad/s quando ? = 3 revolu��es.
W4=10*sqrt((2*pi*4)/5); % A velocidade angular em rad/s quando ? = 4 revolu��es.
W5=10*sqrt((2*pi*5)/5); % A velocidade angular em rad/s quando ? = 5 revolu��es.

disp('10)As respostas do exerc�cio 10 da lista 3 s�o :')
disp('------------------------------------------------------------------------')
disp('As repostas da letra a) s�o :') 
disp('O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 1s � (delta?1) = ')
disp(revolucao1) %1� resposta da letra a) do exerc�cio 10 da lista 3.
disp('O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 2s � (delta?2) = ')
disp(revolucao2) %2� resposta da letra a) do exerc�cio 10 da lista 3.
disp('O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 3s � (delta?3) = ')
disp(revolucao3) %3� resposta da letra a) do exerc�cio 10 da lista 3.
disp('O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 4s � (delta?4) = ')
disp(revolucao4) %4� resposta da letra a) do exerc�cio 10 da lista 3.
disp('O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 5s � (delta?5) = ')
disp(revolucao5) %5� resposta da letra a) do exerc�cio 10 da lista 3.
disp('O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 6s � (delta?6) = ')
disp(revolucao6) %6� resposta da letra a) do exerc�cio 10 da lista 3.
disp('O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 7s � (delta?7) = ')
disp(revolucao7) %7� resposta da letra a) do exerc�cio 10 da lista 3.
disp('O n�mero de revolu��es do tambor quando o gancho estiver em movimento de 8s � (delta?8) = ')
disp(revolucao8) %8� resposta da letra a) do exerc�cio 10 da lista 3.
disp('------------------------------------------------------------------------')
disp('As repostas da letra B) s�o :') 
disp('A velocidade angular em rad/s quando delta? = 0 revolu��o � (W0) = ')
disp(W0) %1� resposta da letra b) do exerc�cio 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 1 revolu��o � (W1) = ')
disp(W1) %2� resposta da letra b) do exerc�cio 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 2 revolu��o � (W2) = ')
disp(W2) %3� resposta da letra b) do exerc�cio 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 3 revolu��o � (W3) = ')
disp(W3) %4� resposta da letra b) do exerc�cio 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 4 revolu��o � (W4) = ')
disp(W4) %5� resposta da letra b) do exerc�cio 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 5 revolu��o � (W5) = ')
disp(W5) %6� resposta da letra b) do exerc�cio 10 da lista 3.