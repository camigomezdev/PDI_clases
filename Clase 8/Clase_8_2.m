clear all, close all, clc
a = imread('figura2.bmp');
[fil, col, cap]=size(a);
if cap>1
    a = rgb2gray(a);
end
a(a>0)=255;
EE = strel('square',3);
b=a;
figure(1);imshow(a);
c = imerode(b,EE);
d = b-c;
figure(2); imshow(d); title(['perimetro = ', num2str(sum(d(:)))]);
