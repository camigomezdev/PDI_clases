clear all,close all, clc

% Propiedades de regiones de una imagen
% Ejemplo de uso de la función REGIONPROPS
% Lectura de la imagen
img=imread('1.jpg');
figure(1); imshow(img);
b=rgb2gray(img);
b(b<205)=0;
b(b>0)=255;

b(b==0)=100;
b(b==255)=0;
b(b==100)=255;

figure(2); imshow(b);
L = bwlabel(b);
stats = regionprops(L);
stats(2)

