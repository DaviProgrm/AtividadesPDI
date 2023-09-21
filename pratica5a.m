clear all
close all
im = imread('C:\Users\davic\OneDrive\Área de Trabalho\4Periodo\PDI\Atividades\Pratica5\cores.jpg');
% Obtenha as dimensões da imagem
[altura, largura, ~] = size(im);

% Inicialize uma matriz para a imagem em escala de cinza
imagem_escala_de_cinza = zeros(altura, largura);

% Loop pelos pixels da imagem colorida e aplique a conversão para escala de cinza
for linha = 1:altura
    for coluna = 1:largura
       % Obtenha os valores dos canais de cores (R, G, B) do pixel
       R = double(im(linha, coluna, 1));
       G = double(im(linha, coluna, 2));
        B = double(im(linha, coluna, 3));

        % Aplique a fórmula para converter para escala de cinza
        pixel_escala_de_cinza = 0.2989 * R + 0.5870 * G + 0.1140 * B;

        % Defina o valor do pixel na imagem em escala de cinza
        imagem_escala_de_cinza(linha, coluna) = pixel_escala_de_cinza;
    end
end

% Exiba a imagem em escala de cinza
figure(1);
imshow(uint8(imagem_escala_de_cinza));



% Obtenha as dimensões da imagem
[altura, largura, ~] = size(im);

% Inicialize matrizes para os canais de cores (R, G, B)
canal_vermelho = zeros(altura, largura);
canal_verde = zeros(altura, largura);
canal_azul = zeros(altura, largura);

% Extrai os canais de cores (R, G, B) usando um loop for
tic
for linha = 1:altura
    for coluna = 1:largura
        R = im(linha, coluna, 1);
        G = im(linha, coluna, 2);
        B = im(linha, coluna, 3);

        canal_vermelho(linha, coluna) = R;
        canal_verde(linha, coluna) = G;
        canal_azul(linha, coluna) = B;
    end
end
toc

% Exiba os canais de cores separadamente
subplot(1, 3, 1);
imshow(uint8(canal_vermelho));
title('Canal Vermelho');

subplot(1, 3, 2);
imshow(uint8(canal_verde));
title('Canal Verde');

subplot(1, 3, 3);
imshow(uint8(canal_azul));
title('Canal Azul');



