%Operaciones básicas 
clear all, close all, clc

%Ejercicio imagen en negativo
a = imread('paisaje1.jpg');
%pasar a escala de grises
b = rgb2gray(a); 
%para ver el negativo a color
%b = a; 
%Mostrar el negativo de la imagen
c=255-b;
figure(1); imshow([b,c]); impixelinfo