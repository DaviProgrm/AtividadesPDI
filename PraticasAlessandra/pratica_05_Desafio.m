clear all
close all

im = imread('neuron.jpg');

imGray = (0.2989 * im(:,:,1)) + (0.5870 * im(:,:,2)) + (0.1140 * im(:,:,3));
figure('name', 'cinza');
imshow(imGray);

figure('name', 'canais');

subplot(1,3,1);
imshow(im(:,:,1));

subplot(1,3,2);
imshow(im(:,:,2));

subplot(1,3,3);
imshow(im(:,:,3));

for i=1:size(im,1)
    for j=1:size(im,2)
        imSaida1(i,j) = im(i,j,1) - im(i,j,2) - im(i,j,3);
        imSaida2(i,j) = im(i,j,1) > 127 && im(i,j,2) < 127 && im(i,j,3) < 127;
    end
end

figure('name', 'imSaida1');
imshow(imSaida1);

figure('name', 'imSaida2');
imshow(imSaida2);
