close all
clear all

%fiz dessa forma... a saída 2 não ficou igual...

imagem = imread('C:\\Users\\davic\\OneDrive\\Área de Trabalho\\4Periodo\\PDI\\Atividades\\Pratica5\\neuron.jpg');


saida1 = imagem(:, :, 1)-imagem(:,:,2)-imagem(:,:,3);

saida2 = saida1(:, :, 1) > 127 & imagem(:,:,2) < 127 & imagem(:,:,3) < 127;


figure(1);
imshow(imagem);
title('Imagem Original');

figure(2);
imshow(saida1);
title('Operação Aritimetica');

figure(3);
imshow(saida2);
title('Operação Logica');





