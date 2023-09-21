% Leia a imagem "fractal.png" e armazene na variável "im"
im = imread('fractal.png');

% Inicialize uma matriz para armazenar as imagens decompostas bit a bit
imFatiada = zeros(size(im, 1), size(im, 2), 8, 'logical');

% Realize a decomposição da imagem bit a bit
%for i = 1:size(im,1)
%  for j = 1:size(im,2)
%    for c = 1:8
%      imFatiada(i,j,c) = bitget(im(i,j),c);
%    end
%  end
%end

for c = 1:8
  imFatiada(:,:,c) = bitget(im(:,:),c);
end

% Imagens decompostas bit a bit
for i = 1:8
    imwrite(imFatiada(:,:,i),  ['fractal_' num2str(i) '_bit.png']);
end

imSaida = imFatiada(:,:,7) | imFatiada(:,:,8);
imwrite(imSaida, 'fractal_imSaida.png');
