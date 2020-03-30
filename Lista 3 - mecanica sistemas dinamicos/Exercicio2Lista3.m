% Este programa retorna a resposta do exerc�cio 2 da lista 3.
disp('2) A correia mostrada na figura move-se sobre duas polias sem deslizar. No instante mostrado, as polias est�o girando no sentido hor�rio e a velocidade do ponto B sobre a correia � de 4 m/s, aumentando a uma taxa de 32 m/s2. Determine a velocidade e a acelera��o angular de cada polia.')
atangencial=32 % acelera��o tangencial em m/s.s
Vb=4; % velocidade em m/s da correia no ponto B.
Vc=Vb; % velocidade em m/s na polia C.
Ra=0.16; % raio da polia A em m.
Rc=0.1; % raio da polia C em m.
Va=Vc; % velocidade escalar da polia A � igual a velocidade escalar da polia C devido a elas estarem ligadas por uma correia.
WB=Vb/Rc; % Velocidade angular no ponto B.
WA=(WB*Rc)/Ra; % Velocidade angular da Polia A.
aangularA=atangencial/Ra;
aangularB=atangencial/Rc;
disp('2)As respostas do exerc�cio 2 da lista 3 s�o :') 
disp ('A velocidade angular em rad/s na polia A � (WA) = ');
disp(WA) %resposta exerc�cio 2 da lista 3.
disp ('A velocidade angular em rad/s no ponto B ou na polia c � (WB) = ');
disp(WB) %resposta exerc�cio 2 da lista 3.
disp ('A acelera��o angular em rad/s na polia A � (acelera��o angular A) = ');
disp(aangularA) %resposta exerc�cio 2 da lista 3.
disp ('A acelera��o angular em rad/s no polia C ou no ponto B � (acelera��o angular B) =');
disp(aangularB) %resposta exerc�cio 2 da lista 3.
 