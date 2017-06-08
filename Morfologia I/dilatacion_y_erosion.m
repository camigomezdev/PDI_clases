% Erosión y dilatación
clear all, close all, clc

a = imread('cuadrado.bmp');
[fil, col, cap]=size(a);
if cap>1;a = rgb2gray(a);end;
a(a>0)=255;

% Se crea un elemento estructurante 
EE = strel('square',5);
b=a;

% Dilatación de la imagen multiples veces
for i = 1:10
    b = imdilate(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end

%Erosión de la imagen
for i = 1:20
    b = imerode(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end

%Dilatación nuevamente para volver al tamaño original
for i = 1:10
    b = imdilate(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end

