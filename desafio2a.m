im = imread('C:\Users\davic\OneDrive\Área de Trabalho\3Periodo\PDI\Atividades\pratica3\real.png');

[rows, cols] = size(im);


numbits = 7;

upmascara = bitshift(255, 8 - numbits);

lowmascara = 255 - upmascara;

imFatiada = zeros(rows, cols, 'uint8');

for i = 1:rows
    for j = 1:cols
        pixel = im(i, j);

        upper_bits = bitand(pixel, upmascara);
        lower_bits = bitand(pixel, lowmascara);

        upper_bits = bitshift(upper_bits, 8 - numbits);

        new_pixel = bitor(upper_bits, lower_bits);

        imFatiada(i, j) = new_pixel;
    end
end

imshow(imFatiada);
