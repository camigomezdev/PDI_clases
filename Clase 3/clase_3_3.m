%Limpiar
clear all, close all, clc
%Negativo
a = imread('paisaje1.jpg');
b = imread('paisaje2.jpg');
%Mismo tamaño
[fil,col,cap]=size(a);


relacion = floor(col/fil);
col = relacion*fil;
a=imresize(a,[fil,col]);
b=imresize(b,[fil,col]);
c=a;

v = VideoWriter('tarea_video2.avi');
open(v);
for i = 1:col/2
    n=fil-i+1;
    m=i*relacion;
    m2=col-i*relacion+1;
    c(n:end,1:m,:)=b(1:i,m2:end,:);
    figure(2);
    imshow(c);
    writeVideo(v,c);
    pause(0.01);
end

close(v);


