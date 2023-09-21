close all
clear all

pkg load image

im = imread('c:\eaj\20232\pdi\graosBaixoContraste.png');
figure('Name','Imagem original baixo contraste');
imshow(im)

im2 = rgb2gray(im);
figure('Name','Imagem original baixo contraste - intensidades de cinza');
imshow(im2)

figure('Name','Histograma baixo contraste')
imhist(im2)

vHist = imhist(im2);

vHistLinha(1,:) = vHist(:,1);

for(i=1:256)
  if(vHistLinha(i)!=0)
    menorIntensidade = i;
    break;
  endif
endfor

for(i=256:-1:1)
  if(vHistLinha(i)!=0)
    maiorIntensidade = i;
    break;
  endif
endfor

menorIntensidade
maiorIntensidade

qtdIntensidades = maiorIntensidade - menorIntensidade + 1;
qtdIntensidades

novoIntervalo = 256/qtdIntensidades;
novoIntervalo

novoIntervaloCima = ceil(novoIntervalo); %arredondamento para cima
%novoIntervaloBaixo = floor(novoIntervalo) %arredondamento para baixo

novoIntervaloCima

vHistAC = zeros(1,256);

cont = menorIntensidade;
contMapa = 1;
for(i=1:novoIntervaloCima:256)
  vHistAC(i) = vHistLinha(cont);
  cont++;
  % mapa = mapeamento entre as intensidades antigas da imagem (valores contidos
  % no vetor) e as novas intensidades (valores dos �ndices do vetor).
  mapa(1,contMapa) = cont;
  mapa(2,contMapa) = i;
  contMapa++;
endfor

vHistAC;
figure('Name','Histograma alargado');
plot(vHistAC)

mapa

imSaida = im2;
for(i=1:size(im,1))
  for(j=1:size(im,2))
    for(k=1:size(mapa,2))
      if(mapa(1,k)==im2(i,j))
        imSaida(i,j) = mapa(2,k);
        break;
      end
    end
  end
end

figure('Name','Imagem Alargada');
imshow(imSaida);
figure('Histograma Imagem Alargada');
imhist(imSaida)



