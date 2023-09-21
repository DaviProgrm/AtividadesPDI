close all;
clear all;
morro = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\Pratica4\object_5.jpg');
nuvem = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\Pratica4\background_5.jpg');
passaro = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\Pratica4\object_3.jpg');
pontos = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\Pratica4\mask_1.bmp');

quadros = zeros(512,512,'uint8');

quadros = 255;

#imshow(quadros);

passnegativo = passaro;

for i=1:size(passnegativo,1)
  for j=1:size(passnegativo,2)
    passnegativo(i,j)=255-passaro(i,j);
  endfor
 endfor

imshow(passnegativo);

espelhado = zeros(512,512,'uint8');

for i=1:size(espelhado,1)
  for j=1:size(espelhado,2)
    espelhado(i,j)= morro(i, 512 - j + 1);
  endfor
 endfor

figure(3);
imshow(espelhado);

espelhado1 = logical(morro);
passaro1 = logical(passaro);

im_junta = (espelhado1 & passaro1) | (espelhado & passaro);

figure(5);
imshow(im_junta);




