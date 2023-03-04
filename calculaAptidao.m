function [aptidao] = calculaAptidao(populacao, palavra)
  
  palavraASCII = double(palavra);
  
  [L,C] = size(populacao);
  aptidao = zeros(1,L);
  
  for i=1:L
    soma = 0;
    for j=1:C
      if (palavraASCII(j) != populacao(i,j))
        soma++;
      endif
    endfor
    aptidao(1,i) = soma;
  endfor
  
endfunction
  