clear all, close all, clc
% Para todas las placas
for i=1:198
    imagen = (['.\1_Fotos\carro (', num2str(i),').jpg']);
    a = imread(imagen);
    %figure(1);imshow(a);title(['Image original']);
    [fil,col,cap]=size(a);
    % Redimensionar la imagen
    fil_min=floor(0.4*fil);
    fil_max=floor(0.9*fil);
    col_min=floor(0.2*col);
    col_max=floor(0.9*col);
    % Se recorta la imagen para evitar ruido de espacio que no concierne
    b=a(fil_min:fil_max,col_min:col_max,:);
    figure(2);imshow(b);title(['Image recortada ', imagen]);
    imagen = (['.\2_Placa_recortada\placa (', num2str(i),').jpg']);
    imwrite(b,imagen);
    %pause(0.001);
end
