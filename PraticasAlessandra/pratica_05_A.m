clear all
close all

im = imread('cores.jpg');

imGray = (0. 2989 * im(:,:,1)) + (0. 5870 * im(:,:,2)) + (0. 1140 * im(:,:,3));
figure('name', 'cinza');
imshow(imGray);

figure('name', 'canais');

subplot(1,3,1);
imshow(im(:,:,1));

subplot(1,3,2);
imshow(im(:,:,2));

subplot(1,3,3);
imshow(im(:,:,3));