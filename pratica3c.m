clear all
close all

pkg load image


im = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\pratica3\lake.png');

imhist(im);

imContraste = im;

min = 0;
max = 255;

imContraste = (im-95)*((max-min)/(150-95))+min;

subplot(1,2,1)
imshow(im);

subplot(1,2,2)
imshow(imContraste);


