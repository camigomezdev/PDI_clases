clear all, close all, clc
a = imread('cuadrado.bmp');
[fil, col, cap]=size(a);
if cap>1
    a = rgb2gray(a);
end
a(a>0)=255;
EE = strel('line',3,45);
b=a;
for i = 1:10
    b = imdilate(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end
for i = 1:20
    b = imerode(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end
for i = 1:10
    b = imdilate(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end

