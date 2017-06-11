close all
clear all
clc
a=imread('1_filtro_suavizador.bmp');
% Se convierte la imagen a escala de grises
a=rgb2gray(a);
%figure(1);imshow(a);impixelinfo;pause
mascara=[1,2,1;2,4,2;1,2,1]/16;
[x,y]=size(a);
b=zeros(x,y);
c=a;
% Se hace la operación 20 veces, por cada columna y cada fila,
% se toma una sección de 3 pixeles alrededor del pixel deseado y se
% multiplica ese pixel por la matriz máscara, que hace difuminar las
% regiones muy bien definidas
for i=1:20
for col=2:1:y-1
    for fil=2:1:x-1
        z=a(fil-1:fil+1, col-1:col+1);
        R=double(z(:)).*mascara(:);
        R=sum(R);
        b(fil,col)=R;
     end
end
% Se reduce la escala de colores de la imagen a 8 bits
a=uint8(b);
end

subplot(1,2,1);imshow(c);subplot(1,2,2);imshow(uint8(b))
