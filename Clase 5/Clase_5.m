clear all, close all, clc

a = imread('imagen.jpg'); 
a = imresize(a,0.5);
[fil,col,cap]=size(a);
a1 = imread('imagen_2.jpg'); 
a1 = imresize(a1,[fil,col]);
%a = [a,a1];
figure(1);imshow(a);
figure(2);imshow(a1);

b = componentes(a);
figure(3); imshow(b); impixelinfo

c = componentes(a1);
figure(4); imshow(c); impixelinfo

%a2 = imread('imagen_3.jpg'); 
a2 = imresize(a2,[fil,col]);
d = componentes(a2);
figure(5); imshow(d); impixelinfo


% [bn, s, y, b, c] = componentes2(a);
% figure(2); imshow([bn, s, y; b, c, c]); impixelinfo
% 
% min1 = min(s,y);
% figure(3); imshow(min1);impixelinfo
% 
% pix = impixel;
% min1(min1<min(pix(:)))=0;
% 
% min1(min1>0)=255;
% 
% figure(4);imshow(min1);impixelinfo
% 
% 
% min1 = [min1,min1,min1];
% min1 = reshape(min1,[fil,col,cap]);
% a(min1 == 0 ) = 0;
% 
% figure(5);imshow(a);impixelinfo
% imwrite(a, 'placa_3.bmp');
% 
