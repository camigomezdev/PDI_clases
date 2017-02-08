%Inicio
clear all, close all, clc
%tomar imagen
imagen = imread('mamografia.jpg');
imshow(imagen)
b = rgb2gray(imagen);
figure
imshow(b);
%sumamos constantes
for i=1:5:255
    figure(2)
    imshow(b+i)
    pause;
end
