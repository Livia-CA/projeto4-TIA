function [doismaisAptos] = elitismo(aptidao)
  
  doismaisAptos = zeros(1,2);

  for i= 1:2
    [valor, indice] = min(aptidao);
    doismaisAptos(i) = indice;
    aptidao(indice) = 100;
  endfor

endfunction
