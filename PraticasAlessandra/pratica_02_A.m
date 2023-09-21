clear all
close all

% Criar uma imagem degradê
im = zeros(256, 256, 'uint8');

for i = 1 : size(im, 1)%linhas
  for j = 1 : size(im, 2)%colunas
    im(i,j) = i-1;
  end
end

% Exibir a imagem degradê
figure('name', 'imagem');
imshow(im);

% salva a imagem em um arquivo
imwrite(im, 'gradiente.png');

% Criar uma moldura com bordas de largura 16 e espaço de 8 pixels da borda
for i = 1 : size(im, 1)%linhas
  for j = 1 : size(im, 2)%colunas
    if(i > 8 && i <= 24) || (i > 232 && i <= 248) || (j > 8 && j <= 24) || (j > 232 && j <= 248)
      im(i,j) = 127;
    end
  end
end

% Exibir a imagem com moldura
figure('name', 'resultado');
imshow(im);
