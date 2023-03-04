function [filhosMutados] = mutacao(filhos, dim)

%Probabilidade ideal de mutação pra elitismo: 20%; pra torneio: 10%; pra roleta: 10%.
  probabilidade = 0;
  filhosMutados = filhos;
  
  for i = 1:2
    probabilidade = rand();
    if(probabilidade > 0.9)
      sel = randperm(dim);
      filhosMutados(i, sel(1)) = filhos(i, sel(2));
      filhosMutados(i, sel(2)) = filhos(i, sel(1));
    endif
  endfor

endfunction
