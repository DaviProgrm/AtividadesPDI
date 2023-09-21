close all
clear all

pkg load image

imagem = imread('C:\\Users\\davic\\OneDrive\\Área de Trabalho\\4Periodo\\PDI\\Atividades\\Pratica5\\neuron.jpg');

canal_r = (canal_r(:, :, 1) & canal_r(:,:,3));

figure;
imshow(canal_r);
title('Canal R em Escala de Cinza');
