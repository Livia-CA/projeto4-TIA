function pais = roleta(pesos)
  
  acumulacao = cumsum(pesos);
  p = rand() * acumulacao(end);
  indice_escolhido = -1;
  pais = zeros(1,2);
  
  for i = 1:2
    for indice = 1 : length(acumulacao)
      if (acumulacao(indice) > p)
        indice_escolhido = indice;
        acumulacao(indice) = 0;
        break;
      end
    end
    pais(1,i) = indice_escolhido;
  endfor
  
endfunction
 
