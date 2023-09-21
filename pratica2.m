imshow(im);


for(i=1:size(im,1))
for(j=1:size(im,2))
im(i,j)=0;
end
end

imshow(im);

im2 = im;
cont = 0;

for(i=1:size(im,1))
for(j=1:size(im,2))
im2(i,j)=cont + 13;
end
cont = cont + 13;
end

imshow(im2);
