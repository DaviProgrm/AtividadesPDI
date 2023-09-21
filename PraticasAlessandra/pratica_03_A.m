%pkg install -forge image
pkg load image

clear all
close all

im = imread('moon.png');

figure('name', 'original');
imshow(im);

figure('name', 'histograma');
imhist(im);

% Limiarização usando um valor fixo
for i = 1 : size(im,1)
  for j = 1 : size(im, 2)
    imBinaria(i,j) = im(i,j) < 120;
  end
end

figure('name', 'binaria');
imshow(imBinaria);


% Limiarização usando um valor digitado
limiar = input('Digite o limiar: ');
for i = 1 : size(im,1)
  for j = 1 : size(im, 2)
    imBinaria2(i,j) = im(i,j) < limiar;
  end
end

figure('name', 'binaria_usuario');
imshow(imBinaria2);

% Negativo na imagem original
imNegativa = im;
for i = 1 : size(im,1)
  for j = 1 : size(im, 2)
    imNegativa(i,j) = 255 - im(i,j);
  end
end
figure('name', 'imnegativo');
imshow(imNegativa);


% Transformação de potência na região da lua
imNova = imNegativa;
potencia = 1.3;
for i = 1 : size(im,1)
  for j = 1 : size(im, 2)
    if(!imBinaria(i,j))
      imNova(i,j) = uint8(double(imNegativa(i,j))^potencia);
    end
  end
end

figure('name', 'imNova');
imshow(imNova);
