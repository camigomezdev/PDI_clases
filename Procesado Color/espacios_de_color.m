%Espacios de color
clear all, close all, clc

a = imread('carro.jpg'); 
a = imresize(a,0.5);
[fil,col,cap]=size(a);
figure(1);imshow(a);

%Mostramos los distintos espacios de color de la imagen
b = componentes(a);
figure(3); imshow(b); impixelinfo

%-----------------Sección 2------------------
% %Extraer espacios de color de interes
% [bn, s, y, b, c] = componentes2(a);
% figure(2); imshow([bn, s, y; b, c, c]); impixelinfo
% %Obtener los pixeles minimos entre S y Y
% min1 = min(s,y);
% figure(3); imshow(min1);impixelinfo
% %Seleccionar pixeles de interes (umbral)
% pix = impixel;
% umbral = min(pix(:));
% min1(min1<umbral)=0;
% min1(min1>0)=255;
% figure(4);imshow(min1);impixelinfo
% 
% %Imagen a color
% min1 = [min1,min1,min1];
% min1 = reshape(min1,[fil,col,cap]);
% a(min1 == 0 ) = 0;
% figure(5);imshow(a);impixelinfo
% 
% %Guardar imagen en formato bmp
% %imwrite(a, 'placa.bmp');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
