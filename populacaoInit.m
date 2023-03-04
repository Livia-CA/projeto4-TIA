function [populacao] = populacaoInit(tmnh, dim)
  
  alfabeto = randperm(26) + 96;
  populacao = zeros(tmnh, dim);
  
  x = 1;
  
  for i=1:tmnh
    for j=1:dim
      if (x <= 26) 
        populacao(i,j) = alfabeto(x);
        x++;
      else
        populacao(i,j) = alfabeto(randperm(length(alfabeto), 1));
      endif
    endfor
  endfor

endfunction