clear all, close all, clc

a = imread('figuras.bmp');
b=bwmorph(a, 'skel', Inf);
figure(1);imshow([a,b]);impixelinfo;
figure(2);imshow(xor(a,b));impixelinfo;