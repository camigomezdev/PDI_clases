%Operaciones básicas
clear all, close all, clc
%Para obtener información 
%de la camara imaqhwinfo
%imaqwinfo('winvideo', 1)

%Lectura de la camara
cam=videoinput('winvideo',2,'MJPG_1280x720');
%Para ver video
%preview(cam)

%Obtener una captura
foto = getsnapshot(cam); 

%Reducir tamaño de la imagen
foto=imresize(foto, 0.5);

%RGB a escala de grises
grises=rgb2gray(foto);
figure(1);imshow(foto);impixelinfo
[fil,col] = size(grises);

%Convertir a imagen de 3 capaz
grises=[grises,grises,grises];
%grises = reshape(grises,[fil col 3]);
figure(3);imshow(grises);impixelinfo

%Llevo todos los pixeles de la imagen a 255
for i = 1:5:255
    figure(4);
    imshow(grises+i);
    title(['sumando ',num2str(i)]);
    pause(0.1);
end

    