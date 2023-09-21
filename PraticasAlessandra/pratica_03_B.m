pkg load image

clear all
close all

% Carregando as imagens de entrada
img_rgb = imread('dance.png'); % Imagem em escala de cinza das pessoas
img_depth = imread('dance_depth_2.png'); % Imagem de profundidade

figure('name', 'histograma');
imhist(im_depth);

% Definindo níveis de intensidade para fatiamento
% Nível para a pessoa mais à frente: 180 - 250
% Nível para a pessoa mais atrás: 100 - 170

% Criando máscaras com base nos níveis de intensidade
for i = 1:size(img_depth ,1)
  for j = 1: size(img_depth ,2)
    mask_claro(i,j) = img_depth(i,j) >= 200 && img_depth(i,j) <= 250;
    mask_escuro(i,j) = img_depth(i,j) >= 100 && img_depth(i,j) <= 200;
  end
end

% Salvando as imagens resultantes
imwrite(mask_claro, 'mask_pessoa_frente.png');
imwrite(mask_escuro, 'mask_pessoa_atras.png');

% Aplicando as máscaras na imagem em escala de cinza
for i = 1:size(img_depth ,1)
  for j = 1: size(img_depth ,2)
    img_destaque_claro(i,j) = img_rgb(i,j) .* uint8(mask_claro(i,j));
    img_destaque_escuro(i,j) = img_rgb(i,j) .* uint8(mask_escuro(i,j));
  end
end

% Salvando as imagens resultantes
imwrite(img_destaque_claro, 'pessoa_frente.png');
imwrite(img_destaque_escuro, 'pessoa_atras.png');
