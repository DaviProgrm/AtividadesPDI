clear all
close all

m1 = imread('C:\EAJ\20232\PDI\Pratica_01\circulo.png');
figure('Name','Circulo.png');
imshow(m1)

%mostrando no console
m1

%fazer cópia da imagem
m2 = m1;

%conversão de tipo lógico para uint8 (inteiro de 8 bits sem sinal)
m2 = uint8(m2);

for(i=1:size(m1,1))
  for(j=1:size(m1,2))
    if(m1(i,j)==1)
      m2(i,j) = 126;
    end
  end
end

figure('Name','Circulo cinza');
imshow(m2)

imwrite(m2,'C:\EAJ\20232\PDI\Pratica_01\circulo2.png');

