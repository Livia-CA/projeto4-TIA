palavra = 'estudante';
tamanho = 15;

populacao = populacaoInit(tamanho, length(palavra));

i = 0;
melhor_da_geracao = zeros(1,2);
do

   i++;
   aptidao = calculaAptidao(populacao, palavra);
   melhor_da_geracao(1, i) = min(aptidao);

   %Seleção -> Cruzamento -> Mutação -> Inserção
   
   %pais = torneio(aptidao, length(populacao));
   pais = elitismo(aptidao);
   filhos = crossOver(pais, populacao, length(palavra));
   filhos = mutacao(filhos, palavra);
   populacao((tamanho+1):(tamanho+2), :) = filhos;
   
    aptidao = calculaAptidao(populacao, palavra);
    [valor, indice] = min(aptidao);

    sprintf('%s', populacao(indice,:))

   %Remoção dos 2 piores 
   for c = 1:2
     aptidao = calculaAptidao(populacao, palavra);
     populacao(menosApto(aptidao), :) = [];
   endfor
   
until(melhor_da_geracao(i) < 1)

aptidao = calculaAptidao(populacao, palavra);
[valor, indice] = min(aptidao);

sprintf('melhor palavra : %s', populacao(indice,:))

plot((0:(length(melhor_da_geracao)-1)), melhor_da_geracao)