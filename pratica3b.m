close all
clear all

pkg load image

im = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\pratica3\dance.png');
im2 = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\pratica3\dance_depth.png');

imhist(im2);

imFatiada = im2;

for i=1:size(imFatiada,1)
  for j=1:size(imFatiada,2)
    if imFatiada(i,j)<85
      imFatiada(i,j)=0;
    elseif imFatiada(i,j)>170
      imFatiada(i,j)=0;
    elseif imFatiada(i,j)<170&&imFatiada(i,j)>0
      imFatiada(i,j)=255;
    endif
    endfor
  endfor

imAlterada = imFatiada;

for i=1:size(imAlterada,1)
  for j=1:size(imAlterada,2)
    if imAlterada(i,j)==255
    imAlterada(i,j)=im(i,j);
      endif
    endfor
  endfor

imHomen = im2;

for i=1:size(imHomen,1)
  for j=1:size(imHomen,2)
    if imHomen(i,j)<170
      imHomen(i,j)=0;
    elseif imHomen(i,j)>170
      imHomen(i,j)=255;
      endif
    endfor
  endfor

imHomen2 = imHomen;

for i=1:size(imHomen2,1)
  for j=1:size(imHomen2,2)
    if imHomen2(i,j)==255
    imHomen2(i,j)=im(i,j);
      endif
    endfor
  endfor

subplot(1,4,1)
imshow(imFatiada);

subplot(1,4,2)
imshow(imAlterada);

subplot(1,4,3)
imshow(imHomen);

subplot(1,4,4)
imshow(imHomen2);



