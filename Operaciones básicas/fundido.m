%fundido de imagenes
clear all, close all, clc

%Leemos las imagenes y las ponemos del mismo tamaño
a = imread('paisaje1.jpg');
b=imread('paisaje2.jpg');
[fil,col,cap]=size(a);
b=imresize(b,[fil,col]);

%Grabar un video
v = VideoWriter('video_fundido.avi');
open(v);

%Se varía el porcentaje de la visibilidad de l imagen
for i = 0:0.005:1
    c=a*(i)+b*(1-i);
    figure(2);imshow(c);title(['porcentaje = ', num2str(i*100)]);
    %Se escribe cada frame en el video
    writeVideo(v,c);
    pause(0.01);
end

%Se guarda el video 
close(v);


