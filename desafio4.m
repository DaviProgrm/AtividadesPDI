close all;
clear all;
menino = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\Pratica4\mask_3.tif');
pretos = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\Pratica4\mask_2.tif');

pretologic = zeros(512,512,'uint8');
limiar = 126;

for i = 1:size(pretos,1)
    for j = 1:size(pretos,2)
        if pretos(i, j) >= limiar
            pretologic(i, j) = 255;
        else
            pretologic(i, j) = 0;
        end
    end
end

im_final = menino & pretologic;

figure(2);
imshow(im_final);
