% Carregue sua imagem lógica (binária)
imagem = imread('C:\Users\davic\OneDrive\Área de Trabalho\4Periodo\PDI\Atividades\Pratica4\mask_1.bmp'); % Substitua 'sua_imagem.png' pelo caminho da sua imagem

% Obtenha as dimensões da imagem original
[linhas, colunas] = size(imagem);

% Crie uma matriz vazia para a imagem rotacionada (90 graus à esquerda)
imagem_rotacionada = zeros(colunas, linhas);

% Faça a rotação manualmente
for i = 1:linhas
    for j = 1:colunas
        % rotação para direita \/
        imagem_rotacionada(j,linhas - i +1) = imagem(i, j);
        % rotação para esquerda \/
        imagem_rotacionada(colunas - j + 1, i) = imagem(i, j);
        % Faz o L Negada.
    end
end

% Exiba a imagem original e a imagem rotacionada
subplot(1, 2, 1);
imshow(imagem);
title('Imagem Original');

subplot(1, 2, 2);
imshow(imagem_rotacionada);
title('Imagem Rotacionada (90 graus esquerda)');

