clear all, close all, clc

a = imread('figuras.bmp');
% la función bwmorph hace un esquema del esqueleto de la imagen, trazando líneas
% por la intersección de las esquinas de las figuras con su centro
% cambiando los parámetros a bwmorph(a, 'remove') se obtienen los
% bordes de las figuras
b=bwmorph(a, 'skel', Inf);
figure(1);imshow([a,b]);impixelinfo;
% Se realiza una operación XOR sobre la imagen original y el esqueleto, para
% mostrarlas a ambas, con las figuras en blanco y el esqueleto en negro
figure(2);imshow(xor(a,b));impixelinfo;
