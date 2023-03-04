function [pais] = torneio(aptidao, qntd_individuos)
  
  sorteio = randperm(qntd_individuos);
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
