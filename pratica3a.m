im = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\pratica3\moon.png');

imBinarizada = im;

for i=1:size(imBinarizada,1)
  for j=1:size(imBinarizada,2)
    if (imBinarizada(i,j)<125)
      imBinarizada(i,j)=255;
    elseif (imBinarizada(i,j)>125)
      imBinarizada(i,j)=0;
    endif
  end
  end


imInvertida = im;

for i=1:size(imInvertida,1)
  for j=1:size(imInvertida,2)
    imInvertida(i,j) = 255 - im(i,j);
  endfor
endfor

imFinal = imInvertida;

for i = 1:size(imFinal, 1)
    for j = 1:size(imFinal, 2)
       if(imFinal(i,j)>120&&imFinal(i,j)<200)
          imFinal(i,j)=255;
        endif
    end
end

subplot(1,4,1)
imshow(im);

subplot(1,4,2)
imshow(imBinarizada);

subplot(1,4,3)
imshow(imInvertida);

subplot(1,4,4)
imshow(imFinal);
