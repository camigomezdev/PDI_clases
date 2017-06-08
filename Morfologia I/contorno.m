% Erosión y dilatación
clear all, close all, clc

a = imread('figura.bmp');
[fil, col, cap]=size(a);
if cap>1;a = rgb2gray(a);end;
a(a>0)=255;

%Elemento etructurante
EE = strel('square',3);
b=a;

%Se erosiona una vez y se resta con la imagen original
%para obtener el borde de la figura.
c = imerode(b,EE);
d = b-c;
%El perimetro es la sumatoria de los pixeles restantes.
perimetro = sum(d(:));
figure(2); imshow(d); title(['perimetro = ', num2str(perimetro)]);
