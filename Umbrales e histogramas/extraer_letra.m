%Histograma y separación de letras
clear all, close all, clc

a=imread('placa.jpg');
b=rgb2gray(a);
%Mostrar cantidades de grises
figure(1); 
subplot 221; imshow(b);
subplot 212; imhist(b); impixelinfo

% %------Generar umbral y sumatoria de pixeles-------
% c=b; c(c>100)=255; c(c<255)=0; c=255-c; 
% e=c; c=c'; 
% d = sum(c);
% figure(4); 
% subplot 211; imshow(c);
% subplot 212; plot(d);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %--------obtener region de interes-----------------
% f=e(140:180,:);
% figure(5);imshow(f);
% g = sum(f);
% figure(6); 
% subplot 211; imshow(f);
% subplot 212; plot(g);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %----------obtener letra---------------------------
% h=f(:,120:145);
% figure(7); imshow(h);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

