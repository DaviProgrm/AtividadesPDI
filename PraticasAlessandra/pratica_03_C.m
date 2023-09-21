pkg load image

clear all
close all

% Carregando a imagem de entrada
im = imread('lake.png');

% Salvando o histograma
histograma = imhist(im);

% Inicialize variáveis para o alargamento de contraste
min_intensidade = 255;
max_intensidade = 0;

% Encontre os valores mínimo e máximo de intensidade na imagem
for i = 1:256
    if histograma(i) > 0
        min_intensidade = min(min_intensidade, i - 1);
        max_intensidade = max(max_intensidade, i - 1);
    end
end

% Inicialize uma matriz para a imagem esticada
imContraste = zeros(size(im,1), size(im,2), 'uint8');

% Aplique o estiramento de contraste usando laços
for i = 1:size(im,1)
    for j = 1:size(im,2)
        valor_pixel = double(im(i, j));
        novo_valor = ((valor_pixel - min_intensidade) / (max_intensidade - min_intensidade)) * 255;
        imContraste(i, j) = uint8(novo_valor);
    end
end

% Exiba a imagem original e a imagem esticada de contraste
figure('name', 'imagens');
subplot(1, 2, 1);
imshow(im);
title('Imagem Original');

subplot(1, 2, 2);
imshow(imContraste);
title('Imagem com Contraste Esticado');

% Plotando o histograma
figure('name', 'histograma');
subplot(1, 2, 1);
imhist(im);

subplot(1, 2, 2);
imhist(imContraste);


