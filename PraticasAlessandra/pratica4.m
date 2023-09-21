clear all
close all

im_bg = imread('background_2.jpg');
im_bg2 = imread('background_3.jpg');
im_mk = imread('mask_1.bmp');
%im_mk = im_mk > 127;
im_ob = imread('object_4.jpg');

%figure('name', 'teste')
%imshow((im_bg/2) + (im_ob/2))

figure('name', 'imagens de entrada');
subplot(1,3,1);
imshow(im_bg);
subplot(1,3,2);
imshow(im_mk);
subplot(1,3,3);
imshow(im_ob);

quadro = zeros(512, 512, 'uint8');

for i = 1:size(im_ob,1)
    for j = 1:size(im_ob,2)
       im_ob(i,j) = 255-im_ob(i,j);
    end
end

figure('name', 'imagem objeto');
imshow(im_ob);

im_bg2_copy = im_bg2;
for i = 1:size(im_ob,1)
    for j = 1:size(im_ob,2)
       im_bg2(size(im_ob,1)-i+1,j) = im_bg2_copy(i,j);
    end
end

im_mk_copy = im_mk;
for i = 1:size(im_ob,1)
    for j = 1:size(im_ob,2)
       im_mk(i,size(im_mk,2) + 1 - j) = im_mk_copy(j,i);
    end
end

figure('name', 'rotação')
imshow(im_mk)

for i = 1:size(im_ob,1)
    for j = 1:size(im_ob,2)
       %im_bg(i,j) = im_bg(i,j) * uint8(!im_mk(i,j));
       if im_mk(i,j)
            im_bg(i,j) = im_bg2(i,j);
       else
            im_bg(i,j) = im_bg(i,j);
       endif


       quadro(i,j) = im_ob(i,j) + im_bg(i,j);
    end
end

figure('name', 'quadro1');
imshow(quadro);







