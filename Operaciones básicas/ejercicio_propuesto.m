%Lograr que la segunda imagen entre en diagonal
clear all, close all, clc

%Leemos las imagenes
a = imread('paisaje1.jpg');
b = imread('paisaje2.jpg');
[fil,col,cap]=size(a);

%Asignamos el tamaño en las
%en proporciones iguales
relacion = floor(col/fil);
col = relacion*fil;
a=imresize(a,[fil,col]);
b=imresize(b,[fil,col]);
c=a;

%La segunda imagen ingresa en la diagonal
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


