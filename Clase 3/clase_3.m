%Limpiar
clear all, close all, clc
%Negativo
a = imread('paisaje1.jpg');
%pasar a escala de grises
b = rgb2gray(a); 
%para ver el negativo a color
%b = a; 
%c=255-b;
%figure(1); imshow([b,c]); impixelinfo

%figure(1); imshow(c); pause(20)
%figure (1); imshow(b+255);

%fundido
%leemos la segunda imagen y las ponemos del mismo tamaño
b=imread('paisaje2.jpg');
[fil,col,cap]=size(a);
b=imresize(b,[fil,col]);

v = VideoWriter('tarea_video.avi');
open(v);

for i = 0:0.005:1
    c=a*(i)+b*(1-i);
    figure(2);
    imshow(c);
    title(['porcentaje = ', num2str(i*100)]);
    writeVideo(v,c);
    pause(0.01);
end
for i = 0:0.005:1
    c=b*(i)+a*(1-i);
    figure(2);
    imshow(c);
    title(['porcentaje = ', num2str(i*100)]);
    writeVideo(v,c);
    pause(0.01);
end
close(v);


