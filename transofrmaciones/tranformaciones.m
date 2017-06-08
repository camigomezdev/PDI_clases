%Transformaciones
clear all; close all; clc
imagen= imread('casa.jpg');

%Redimencionar imagen
%Interpolado y diezmado
a=imresize(imagen,4,'method','box'); figure(1); imshow(a);
b=imresize(imagen,0.25,'method','box'); figure(2); imshow(b);
c=imresize(b,16,'method','box'); figure(3); imshow(c);
pause;

%Rotación 
for i=0:5:360
    a=imrotate(a,i,'crop','bicubic');
    figure(1); imshow(a);
    pause(0.1);
end
