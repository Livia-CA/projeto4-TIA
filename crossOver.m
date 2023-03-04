function [filhos] = crossOver(pais, popu, dim)
  
  %pais é um vetor de 1 dimensão que contém o endereço(n° da linha) dos pais na população
  idivide(int32(14), 3);
  areacorte = (randperm((idivide(int32(dim), 2)),1)):(randperm((idivide(int32(dim), 2)),1)+idivide(int32(dim), 2));
  %Cruzando a primeira metade
  aux = popu(pais(1), areacorte);
  popu(pais(1), areacorte) = popu(pais(2), areacorte);
  popu(pais(2), areacorte) = aux;
  %disp('Cruzado')

  filhos(1, :) = popu(pais(1), :);
  filhos(2, :) = popu(pais(2), :);
  
endfunction
