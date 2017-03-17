clear all, close all, clc

a = imread('taxi.jpg');
%a=rgb2gray(a);
b=a;
ee=strel('line', 3,0);
for i=1:30
    a=imerode(a,ee);
    figure(1);imshow(a);
    pause(0.1);
end
pause
for i=1:30
    b=imdilate(b,ee);
    figure(2);imshow(b);
    pause(0.1);
end