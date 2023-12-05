close all
clear all

entrada1 = imread('C:\Users\davic\OneDrive\Área de Trabalho\ProvasPDII\prv2.jpg');
entrada2 = imread('C:\Users\davic\OneDrive\Área de Trabalho\ProvasPDII\ruido1.jpg');

#mascara e cortes.
limiar = 200;
m1 = sum(entrada1, 3) / 3 > limiar;

#figure(2);
#imshow(m1);
#title('Máscara');

for i=1:size(m1,1)
  for j=1:size(m1,2)
    if m1(i,j)
      m1(i,j)=false;
    else
      m1(i,j)=true;
    endif
  endfor
 endfor

for i=1:112
  for j=1:size(m1,2)
    m1(i,j)=0;
  endfor
 endfor

for i=106:116
  for j=107:200
    m1(i,j)=0;
  endfor
 endfor

figure(1);
imshow(m1);
title('Máscara');

#filtragem espacial passa baixa

m2=m1;

EE =[true true true true true;
     true true true true true;
     true true true true true;
     true true true true true;
     true true true true true];

imDilatada = false(size(m2));

for i = 3:size(m2, 1)-2
  for j = 3:size(m2, 2)-2
    if m2(i, j)
      imDilatada(i-2:i+2, j-2:j+2) = EE;
    end
  end
end

imErodida = false(size(m2));

for i=3:size(imDilatada,1)-2
  for j=3:size(imDilatada,2)-2
    if(imDilatada(i,j))
      viz = imDilatada(i-2:i+2, j-2:j+2);
      if(sum(sum(EE==viz))== 25)
         imErodida(i,j) = true;
        end
     end
  end
end

figure(2);
imshow(imDilatada-imErodida);

#Passa baixa com mediana ordem 7




