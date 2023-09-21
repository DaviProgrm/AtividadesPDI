% Ler e Transformar a Imagem Lena
im = imread('lena.png'); % Lê a imagem "Lena.jpg" e armazena na variável 'im'

% Mostrar Tamanho da Imagem no Console
[altura, largura, canais] = size(im); % Obtém dimensões da imagem
fprintf('Tamanho da imagem: %d x %d\n', altura, largura);

% Exibir Resultados em Subplots
figure('name', 'Ajuste de Intensidades');
subplot(1, 3, 1);
imshow(im);
title('Imagem Original');

% Ajustar Intensidades da Imagem "im"
for i = 1:altura
    for j = 1:largura
        im(i, j) = im(i, j) + 80; % Adiciona 50 às intensidades de cada pixel
    end
end

subplot(1, 3, 2);
imshow(im);
title('Imagem com Ajuste de Intensidade');

% Reverter Ajuste de Intensidades
for i = 1:altura
    for j = 1:largura
        im(i, j) = im(i, j) - 80; % Subtrai 50 de cada pixel
    end
end

subplot(1, 3, 3);
imshow(im); % Revertendo o ajuste
title('Imagem Revertida');

% Ajustar Intensidades de Acordo com Entrada do Usuário
valorUsuario = input('Digite um valor inteiro: ');
for i = 1:altura
    for j = 1:largura
        im(i, j) = im(i, j) + valorUsuario; % Adiciona o valor do usuário às intensidades
    end
end

% Observações no console
fprintf('Ajuste de intensidade concluído.\n');