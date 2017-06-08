%Introducción al curso, captura de la imagen
clear all, close all, clc

%Leer imagen de colores
a = imread('colores.jpg');
%Mostrar imagen
figure(1);imshow(a);impixelinfo
%Extraer solo capa roja
rojo = a(:,:,1);
figure(2);imshow(rojo);impixelinfo

rojo = a; verde=a; azul=a;
%Capa verde y azul igual a 0
rojo(:,:,2:3) = 0; 
%Capa roja y azul igual a 0
verde(:,:,1:2:3)=0; 
%Capa roja y verde igual a 0
azul(:,:,1:2)=0;

figure(3);
%Dividir la figura en dos filas y dos columnas
subplot 221; imshow(a)
subplot 222; imshow(rojo)
subplot 223; imshow(verde)
subplot 224; imshow(azul)