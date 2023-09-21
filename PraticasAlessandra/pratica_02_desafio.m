clear all;
close all;

im = imread('lena.png');

% Desafio
qtd = input('Digite a quantidade de níveis: ');
factor = 255/qtd-1;

for i = 1:size(im,1)
  for j = 1:size(im,2)
    imPosterizada(i,j) = uint8(floor(im(i,j)/factor).*factor);
  end
end

figure('name', 'Desafio');
imshow(imPosterizada);
title('Imagem Posterizada');
