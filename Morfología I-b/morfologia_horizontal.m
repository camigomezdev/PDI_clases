clear all, close all, clc

a = imread('taxi.jpg');
%a=rgb2gray(a);
b=a;
% Se crea un elemento estructurante lineal de 3 espacios
% por 0 grados de inclinación
% con esto se hará una transformación horizontal para suprimir o aumentar
% el tamaño de las regiones de pixeles verticales
ee=strel('line', 3,0);
for i=1:30
    % Se erosiona la imagen para inicialmente aumentar el tamaño de las
    % regiones de  pixeles de la imagen que sean verticales
    a=imerode(a,ee);
    figure(1);imshow(a);
    pause(0.1);
end
pause
for i=1:
    % Se dilata la imagen para reducir el tamaño de las regiones de pixeles
    % que sean verticales, esto reducirá signiticativamente las líneas
    % verticales en la imagen
    b=imdilate(b,ee);
    figure(2);imshow(b);
    pause(0.1);
end
