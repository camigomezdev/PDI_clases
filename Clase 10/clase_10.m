clear all; close all; clc

a= imread('casa.jpg');
a1=imresize(a,4,'method', 'box');
b=imresize(a,0.25,'method', 'box');
c=imresize(b,16,'method', 'box');
figure(1); imshow(a1);
figure(2); imshow(c);
pause;
% for i=0:5:360
%     a=imrotate(a,i,'crop','bicubic');
%     figure(1); imshow(a);
%     pause;
% end
