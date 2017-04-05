clear all, close all, clc
for i=1:198
    imagen = (['.\2_Placa_recortada\placa (', num2str(i),').jpg']);
    a = imread(imagen);
    b=emborronado_morf(a);
    b=emborronado_morf(b);
    %figure(1);imshow(b);pause;
    c=emborronado_lineal(b);
    c=emborronado_lineal(c);
    %figure(1);imshow([a,b,c]);pause;
    d = c_componentes_color(c);
    %figure(1);imshow(d);
    level = graythresh(d);
    BW = im2bw(d,level);
    %figure(2), imshow(BW);
    e = objeto_mayor(BW);
    %figure(3);imshow(e);pause;
    a(e==0)=0;
    figure(1);imshow(a);pause(0.1);
end

    