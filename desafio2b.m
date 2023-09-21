clear all
im = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\pratica3\fractal.png');

[rows, cols] = size(im);

nbits = 8;

upmascara = bitshift(255, 8 - nbits);

lomascara = 255 - upmascara;

img_sliced = zeros(rows, cols, 'uint8');

im2 = im;

for i=1:size(im2,1)
  for j=1:size(im2,2)
    if im2(i,j)>65
      im2(i,j)=255;
    endif
    endfor
  endfor

imb1 = im;
imb2 = im;
imb3 = im;
imb4 = im;
imb5 = im;
imb6 = im;
imb7 = im;
imb8 = im;
tic
for i = 1:rows
    for j = 1:cols
        pixel = imb1(i, j);

        upper_bits = bitand(pixel, upmascara);
        lower_bits = bitand(pixel, lomascara);

        upper_bits = bitshift(upper_bits, 8 - 1);

        new_pixel = bitor(upper_bits, lower_bits);

        imb1(i, j) = new_pixel;
    end
end

for i = 1:rows
    for j = 1:cols
        pixel = imb2(i, j);

        upper_bits = bitand(pixel, upmascara);
        lower_bits = bitand(pixel, lomascara);

        upper_bits = bitshift(upper_bits, 8 - 2);

        new_pixel = bitor(upper_bits, lower_bits);

        imb2(i, j) = new_pixel;
    end
end

for i = 1:rows
    for j = 1:cols
        pixel = imb3(i, j);

        upper_bits = bitand(pixel, upmascara);
        lower_bits = bitand(pixel, lomascara);

        upper_bits = bitshift(upper_bits, 8 - 3);

        new_pixel = bitor(upper_bits, lower_bits);

        imb3(i, j) = new_pixel;
    end
end

for i = 1:rows
    for j = 1:cols
        pixel = imb4(i, j);

        upper_bits = bitand(pixel, upmascara);
        lower_bits = bitand(pixel, lomascara);

        upper_bits = bitshift(upper_bits, 8 - 4);

        new_pixel = bitor(upper_bits, lower_bits);

        imb4(i, j) = new_pixel;
    end
end

for i = 1:rows
    for j = 1:cols
        pixel = imb5(i, j);

        upper_bits = bitand(pixel, upmascara);
        lower_bits = bitand(pixel, lomascara);

        upper_bits = bitshift(upper_bits, 8 - 5);

        new_pixel = bitor(upper_bits, lower_bits);

        imb5(i, j) = new_pixel;
    end
end

for i = 1:rows
    for j = 1:cols
        pixel = imb6(i, j);

        upper_bits = bitand(pixel, upmascara);
        lower_bits = bitand(pixel, lomascara);

        upper_bits = bitshift(upper_bits, 8 - 6);

        new_pixel = bitor(upper_bits, lower_bits);

        imb6(i, j) = new_pixel;
    end
end

for i = 1:rows
    for j = 1:cols
        pixel = imb6(i, j);

        upper_bits = bitand(pixel, upmascara);
        lower_bits = bitand(pixel, lomascara);

        upper_bits = bitshift(upper_bits, 8 - 7);

        new_pixel = bitor(upper_bits, lower_bits);

        imb7(i, j) = new_pixel;
    end
end
toc
subplot(1,8,1)
imshow(imb1);

subplot(1,8,2)
imshow(imb2);

subplot(1,8,3)
imshow(imb3);

subplot(1,8,4)
imshow(imb4);

subplot(1,8,5)
imshow(imb5);

subplot(1,8,6)
imshow(imb6);

subplot(1,8,7)
imshow(imb7);


