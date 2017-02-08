clear all, close all, clc
a = imread('colores.jpg');
figure(1)
imshow(a)
impixelinfo
rojo = a(:,:,1);
figure(2);imshow(rojo);impixelinfo
rojo = a; verde=a; azul=a;
rojo(:,:,2:3) = 0; verde(:,:,1:2:3)=0; azul(:,:,1:2)=0;
figure(3);
subplot 221 %Dividir la figura en dos filas y dos columnas
imshow(a)
subplot 222
imshow(rojo)
subplot 223
imshow(verde)
subplot 224
imshow(azul)