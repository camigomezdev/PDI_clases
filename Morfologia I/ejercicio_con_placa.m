%Erosión y dilatación (imopen, imclose)
clear all, close all, clc

%imopen()
%Erode -> dilate
%imclose()
%Dilate -> Erode

a = imread('placa.bmp');
aa=imread('carro.jpg');
[fil, col, cap]=size(a);
if cap>1;a = rgb2gray(a);end;
a(a>0)=255;

%Elemento estructurante
EE = strel('square',3);
b=a;
%figure(1);imshow(a);

for i = 1:3
    b = imerode(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end
for i = 1:9
    b = imdilate(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end
for i = 1:6
    b = imerode(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end

%------------------Sección 2-------------------------
% %Obtener placa(Sección de umbrales e histogramas)
% a=imclearborder(b);
% aa=imresize(aa, [fil col]);
% [l,n] = bwlabel(a);
% figure(1); imagesc(l);colormap('hot');
% title(['Numero objetos = ', num2str(n)]);
% impixelinfo
% b=[];
% for i=1:n
%     c=a*0;
%     c(l==i)=255;
%     area = sum(c(:)/255);
%     b=[b,area];  
% end
% figure(2); plot(b);
% 
% ind = max(b);
% ind = find(b==ind);
% d=a*0; d(l==ind)=255;
% figure(3); imshow(d);
% [fil, col]=find(d>0);
% fil_min = min(fil(:));
% fil_max = max(fil(:));
% col_min = min(col(:));
% col_max = max(col(:));
% 
% e = aa(fil_min:fil_max,col_min:col_max, :);
% figure(4); imshow(e);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

