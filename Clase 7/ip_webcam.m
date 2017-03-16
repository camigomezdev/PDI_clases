% url = 'http://181.241.186.177:8080/photo.jpg';
% while(1)
%     tic
% 	ss  = imread(url);
%     toc
% end

% cam = ipcam('http://10.5.5.9:8080/live/amba.m3u8', 'GOPROLIS', 'goprolis');
% preview(cam);

cam = videoinput('winvideo',2,'RGB24_640x480');
preview(cam);
ss = getsnapshot(cam);
figure(1);imshow(ss);


% b = Bluetooth('HC-05',1);
% fopen(b);
% fwrite(b,10);
% fwrite(b,20);