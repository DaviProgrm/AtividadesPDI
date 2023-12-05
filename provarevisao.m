close all
clear all

entrada1 = imread('C:\Users\davic\OneDrive\Área de Trabalho\ProvasPDII\prv2.jpg');
entrada2 = imread('C:\Users\davic\OneDrive\Área de Trabalho\ProvasPDII\ruido1.jpg');

limiar = 200;
m1 = sum(entrada1, 3) / 3 > limiar;

figure(2);
imshow(m1);
title('Máscara');

for i=1:size(m1,1)
  for j=2:size(m1,2)
    if m1(i,j)
      m1(i,j)=false;
    else
      m1(i,j)=true;
    endif
  endfor
 endfor

for i=1:size(m1,1)
  for j=107:size(m1,2)
    m1(i,j)=0;
  endfor
 endfor
figure(2);
imshow(m1);
title('Máscara');

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

figure;
subplot(1, 2, 1), imshow(m2), title('Imagem Original');
subplot(1, 2, 2), imshow(imDilatada), title('Imagem Dilatada');

figure(3);
imshow(imDilatada-imErodida);


%% A DESGRAÇA DO RUIDO 1
ruido = entrada2;% ruido é a imagem com ruido miseria

EE2 =uint8([1 1 1 ;
            1 1 1 ;
            1 1 1]);

EE2= double(EE2);


x=0;

total_elementos=0;
SemRuido = ruido;

for i=2:size(ruido,1)-1
   for j=2:size(ruido,2)-1
     VizRuido = ruido(i-1:i+1, j-1:j+1);


     VizRuido = double(VizRuido);
     vetor = VizRuido * EE2;


     vetor = VizRuido(:)';

     vetorOrdenado = sort(vetor);

     for x = 1:length(vetor)
     end

       if rem(x, 2) == 0
        % Se o tamanho for par, média dos dois valores centrais
        indice1 = x / 2;
        indice2 = indice1 + 1;
        m = (vetorOrdenado(indice1) + vetorOrdenado(indice2)) / 2;
       else
        % Se o tamanho for ímpar, valor central
        indice = (x + 1) / 2;
        m = vetorOrdenado(indice);
       end

     SemRuido(i,j)= m;
   endfor
endfor

k=4.5;

figure('name','semRuido');
imshow(SemRuido)
figure('name','comRuido');
imshow(ruido)


imMask = entrada2 - k * SemRuido;
figure('name', 'Mascara')
imshow(imMask)

imFinal = entrada2 - k * imMask;
figure('name', 'Final')
imshow(imFinal)











