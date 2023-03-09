function [pais] = torneio(aptidao)
  
  sorteio = randperm(length(aptidao));
  pais = zeros(1,2);
  j = 1;
  
  for i = 1:2:4
    comp1 = aptidao(sorteio(i));
    comp2 = aptidao(sorteio(i+1));
    if (comp1<comp2)
      pais(1,j) = sorteio(i);
    else
      pais(1,j) = sorteio(i+1);
    endif
    j++;
  endfor

endfunction
