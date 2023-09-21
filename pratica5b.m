clear all
close all
im = imread('C:\Users\davic\OneDrive\Área de Trabalho\4Periodo\PDI\Atividades\Pratica5\milho.png');

limiar = 140;

im2 = im;

for i=1:size(im2,1)
  for j=1:size(im2,2)
    if im2(i,j)<limiar
      im2(i,j,1)=0;
      im2(i,j,2)=0;
    endif
    im2(i,j,3)=0;
  endfor
    endfor

imFinal = im2;




figure(1);
imshow(im);

figure(2);
imshow(im2);
