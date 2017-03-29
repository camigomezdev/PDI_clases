close all
clear all
clc
a=imread('1_filtro_suavizador.bmp');
a=rgb2gray(a);
%figure(1);imshow(a);impixelinfo;pause
mascara=[1,2,1;2,4,2;1,2,1]/16;
[x,y]=size(a);
b=zeros(x,y);
c=a;
for i=1:20
for col=2:1:y-1
    for fil=2:1:x-1
        z=a(fil-1:fil+1, col-1:col+1);
        R=double(z(:)).*mascara(:);
        R=sum(R);
        b(fil,col)=R;
     end
end
a=uint8(b);
end

subplot(1,2,1);imshow(c);subplot(1,2,2);imshow(uint8(b))
 