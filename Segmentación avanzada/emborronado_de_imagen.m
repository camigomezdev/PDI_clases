clear all, close all, clc
for i=1:198
    imagen = (['.\2_Placa_recortada\placa (', num2str(i),').jpg']);
    a = imread(imagen);
    % Se difumina la imagen con emborronado morfológico 2 veces
    b=emborronado_morf(a);
    b=emborronado_morf(b);
    %figure(1);imshow(b);pause;
    % Se difumina la imagen con emborronado lineal 2 veces
    c=emborronado_lineal(b);
    c=emborronado_lineal(c);
    %figure(1);imshow([a,b,c]);pause;
    d = c_componentes_color(c);
    %figure(2);imshow(d);
    level = graythresh(d);
    BW = im2bw(d,level);
    %figure(3), imshow(BW);
    e = objeto_mayor(BW);
    %figure(4);imshow(e);pause;
    a(e==0)=0;
    figure(5);imshow(a);pause(0.1);
end
