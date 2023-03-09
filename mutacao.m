function [filhosMutados] = mutacao(filhos, palavra)

%Probabilidade ideal de mutação pra elitismo: 20%; pra torneio: 10%; pra roleta: 10%.
  probabilidade = 0;
  filhosMutados = filhos;
  
  palavraASCII = double(palavra);
  
  for j = 1:2
    for i = 1:length(palavra)
       probabilidade = rand();
       if(filhosMutados(j, i) != palavra(i))
          if(probabilidade > 0.8)
            filhosMutados(j, i) = randperm(26,1) + 96;
          endif
       else
          if(probabilidade > 0.97)
            filhosMutados(j, i) = randperm(26,1) + 96;
          endif
       endif
       
      endfor
  endfor
  
##  for j = 1:2
##    for i = 1:length(palavra)
##       probabilidade = rand();
##       if(probabilidade > 0.9)
##          filhosMutados(j, i) = randperm(26,1) + 96;
##        endif
##      endfor
##  endfor
  
##  for i = 1:2
##    probabilidade = rand();
##    if(probabilidade > 0.9)
##      sel = randperm(length(palavra));
##      filhosMutados(i, sel(1)) = filhos(i, sel(2));
##      filhosMutados(i, sel(2)) = filhos(i, sel(1));
##    endif
##  endfor

endfunction
