%Umbrales y espacios de color
clear all, close all, clc

%---------------Sección 1-----------------
%Leer imagen
a = imread('lapices.jpg');
%figure(1);imshow(a);
[fil, col, cap] = size(a);
%Separar las tres capaz de la imagen
a1 = reshape(a, [fil, col*cap]);
figure(2); imshow(a1); title('R-G-B'); impixelinfo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------Sección 2-----------------
% %Imagen en espacio de color HSV
%  a2 = rgb2hsv(a);
% %figure(3);imshow(a2);impixelinfo
% %La imagen a2 contiene números entre 0 y 1
% %Se pasa a 255
% a2 = double(a2);
% a2 = a2/max(a2(:))*255;
% a2 = uint8(a2);
% %Se separa cada capa
% a2 = reshape(a2, [fil, col*cap]);
% %Se muestran los diferentes espacios de color
% figure(2); imshow([a1; a2]); title('R-G-B:H-S-I');impixelinfo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------Sección 3-----------------
% %Imagen en espacio de color LAB
% cform = makecform('srgb2lab');
% a3 = applycform(a, cform);
% a3 = double(a3);
% a3 = a3/max(a3(:))*255;
% %Comparamos el resultado de aplicar uint8
% %a4 = uint8(a3);
% %figure(99);imshow([a3,a4]);impixelinfo;
% a3 = uint8(a3);
% %Extraemos la componente b de LAB
% b = a3(:,:,3);
% %figure(4);imshow(b);impixelinfo
% a3 = reshape(a3, [fil, col*cap]);
% figure(2);imshow([a1; a2; a3]);title('R-G-B:H-S-I:L-A-B');impixelinfo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------Sección 4-----------------
% %Definimos un umbral de 205
% %donde b sea menor o igual a 205 se lleva a 0
% b(b<=205)=0;
% %donde b sea mayor a 205 se lleva a 255
% b(b>0)=255;
% %figure(3); imshow(b); title('Imagen binarizada');impixelinfo
% 
% %Para ver la imagen a color
% %b=[b,b,b];
% %b = reshape(b,[fil,col,cap]);
% %a4 = a;
% %a4(b==0)=0;
% %figure(5);imshow(a4);impixelinfo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


