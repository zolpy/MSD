% Este programa retorna a resposta do exercício 10 da lista 3.
disp('10) Um gancho movimenta-se a partir do repouso com aceleração de 20 pés/s2. Se ele está preso a uma corda enrolada no tambor, determine: a) o número de revoluções do tambor quando o gancho estiver em movimento até 5 s com incremento de 1 segundo; b) a velocidade angular após ? < 6 revoluções. Dado: 1 pé = 30,48 cm.')
R=0.6096 % Raio em m do tambor.
at= 20; % Aceleração tangencial do ganho em pés/s².
at1= 20*0.3048; % Transformando pés/s² em m/s²
atangencial=at1 % Aceleração tangencial do ganho em m/s².
aangular=atangencial/R % Aceleração angular do tambor em rad/s².
%?=?o+Wo*t+(aangular*t²)/2 / ?=0+0*t+(aangular*t²)/2.
%?=(aangular*t²)/2 fazndo regra de 3 encontra-se
%?=(aangular*t²)/4*pi   / ?=(10*t²)/4*pi ?=(5*t²)/2*pi.

%O número de revoluções do tambor quando o gancho estiver em movimento até 5 s com incremento de 1 segundo
revolucao1=((5*((1)^2))/(2*pi)); % O número de revoluções do tambor quando o gancho estiver em movimento de 1s.
revolucao2=((5*((2)^2))/(2*pi)); % O número de revoluções do tambor quando o gancho estiver em movimento de 2s.
revolucao3=((5*((3)^2))/(2*pi)); % O número de revoluções do tambor quando o gancho estiver em movimento de 3s.
revolucao4=((5*((4)^2))/(2*pi)); % O número de revoluções do tambor quando o gancho estiver em movimento de 4s.
revolucao5=((5*((5)^2))/(2*pi)); % O número de revoluções do tambor quando o gancho estiver em movimento de 5s.
revolucao6=((5*((6)^2))/(2*pi)); % O número de revoluções do tambor quando o gancho estiver em movimento de 6s.
revolucao7=((5*((7)^2))/(2*pi)); % O número de revoluções do tambor quando o gancho estiver em movimento de 7s.
revolucao8=((5*((8)^2))/(2*pi)); % O número de revoluções do tambor quando o gancho estiver em movimento de 8s.

%A velocidade angular.
%Como anterior mente t=sqrt(4*pi*? /aangular).
%W=Wo+aangular*t/ W=0+aangular*t/ W=aangular*t/ 
%W=aangular*sqrt(4*pi*? /aangular).
%W=10*sqrt(4*pi*? /10) /  W=10*sqrt(2*pi*? /5).

%A velocidade angular após ? < 6 revoluções.
W0=10*sqrt((2*pi*0)/5); % A velocidade angular em rad/s quando ? = 0 revolução.
W1=10*sqrt((2*pi*1)/5); % A velocidade angular em rad/s quando ? = 1 revolução.
W2=10*sqrt((2*pi*2)/5); % A velocidade angular em rad/s quando ? = 2 revoluções.
W3=10*sqrt((2*pi*3)/5); % A velocidade angular em rad/s quando ? = 3 revoluções.
W4=10*sqrt((2*pi*4)/5); % A velocidade angular em rad/s quando ? = 4 revoluções.
W5=10*sqrt((2*pi*5)/5); % A velocidade angular em rad/s quando ? = 5 revoluções.

disp('10)As respostas do exercício 10 da lista 3 são :')
disp('------------------------------------------------------------------------')
disp('As repostas da letra a) são :') 
disp('O número de revoluções do tambor quando o gancho estiver em movimento de 1s é (delta?1) = ')
disp(revolucao1) %1° resposta da letra a) do exercício 10 da lista 3.
disp('O número de revoluções do tambor quando o gancho estiver em movimento de 2s é (delta?2) = ')
disp(revolucao2) %2° resposta da letra a) do exercício 10 da lista 3.
disp('O número de revoluções do tambor quando o gancho estiver em movimento de 3s é (delta?3) = ')
disp(revolucao3) %3° resposta da letra a) do exercício 10 da lista 3.
disp('O número de revoluções do tambor quando o gancho estiver em movimento de 4s é (delta?4) = ')
disp(revolucao4) %4° resposta da letra a) do exercício 10 da lista 3.
disp('O número de revoluções do tambor quando o gancho estiver em movimento de 5s é (delta?5) = ')
disp(revolucao5) %5° resposta da letra a) do exercício 10 da lista 3.
disp('O número de revoluções do tambor quando o gancho estiver em movimento de 6s é (delta?6) = ')
disp(revolucao6) %6° resposta da letra a) do exercício 10 da lista 3.
disp('O número de revoluções do tambor quando o gancho estiver em movimento de 7s é (delta?7) = ')
disp(revolucao7) %7° resposta da letra a) do exercício 10 da lista 3.
disp('O número de revoluções do tambor quando o gancho estiver em movimento de 8s é (delta?8) = ')
disp(revolucao8) %8° resposta da letra a) do exercício 10 da lista 3.
disp('------------------------------------------------------------------------')
disp('As repostas da letra B) são :') 
disp('A velocidade angular em rad/s quando delta? = 0 revolução é (W0) = ')
disp(W0) %1° resposta da letra b) do exercício 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 1 revolução é (W1) = ')
disp(W1) %2° resposta da letra b) do exercício 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 2 revolução é (W2) = ')
disp(W2) %3° resposta da letra b) do exercício 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 3 revolução é (W3) = ')
disp(W3) %4° resposta da letra b) do exercício 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 4 revolução é (W4) = ')
disp(W4) %5° resposta da letra b) do exercício 10 da lista 3.
disp('A velocidade angular em rad/s quando delta? = 5 revolução é (W5) = ')
disp(W5) %6° resposta da letra b) do exercício 10 da lista 3.