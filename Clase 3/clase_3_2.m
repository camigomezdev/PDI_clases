clear all, close all, clc
%Camara
a=videoinput('winvideo',1,'MJPG_1280x720');

b=1; h = [];
while b>0
    c=getsnapshot(a); c = imresize(c,0.6);
    d=getsnapshot(a); d = imresize(d,0.6);
    e = d-c; f=sum(e(:)); h = [h,f];
    figure(1); imshow(e); title(['diferencia ', num2str(f)]);
    pause(0.0001);
    
end
%%
figure (2); plot(h);