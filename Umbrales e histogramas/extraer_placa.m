%Histograma y extracción de placa
clear all, close all, clc

a = imread('carro.bmp');aa=a;
[fil, col, cap]= size(a);
if cap>1; a=rgb2gray(a); end;

%Limpiar bordes
a=imclearborder(a);

% Etiquetar figuras
[l,n] = bwlabel(a);

% Diferenciar figuras por colores
figure(1); imagesc(l);
colormap('hot'); title(['Numero objetos = ', num2str(n)]); impixelinfo

areas=[];
for i=1:n
    c=a*0;
    c(l==i)=255;
    % Calcular area de cada figura
    area = sum(c(:)/255);
    areas=[areas,area];
    % Mostrar las imagenes por separado
    %figure(2);imshow(c);
    %title(['Area = ', num2str(area)]);
    %pause%(1);
end
figure(2); plot(areas);

%Encontrar el area de mayor tamaño
ind = max(areas);
ind = find(areas==ind);
d=a*0; d(l==ind)=255;
figure(3); imshow(d);
[fil, col]=find(d>0);
% Obtener la imagen completa, completando los vacios 
fil_min = min(fil(:));
fil_max = max(fil(:));
col_min = min(col(:));
col_max = max(col(:));
% Imagen a color
e = aa(fil_min:fil_max,col_min:col_max, :);
figure(4); imshow(e);

