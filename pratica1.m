imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\circulo.png')

imread(m1)

for (i=1:size(m1,1))
  for (j=1:size(m1,2))
    if m1(i,j)==1
      m1(i,j)=126;
    endif
  endfor
  endfor

  imread(m1);
