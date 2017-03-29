clear all, close all, clc
for i=1:198
    imagen = (['.\2_Placa_recortada\placa (', num2str(i),').jpg']);
    a = imread(imagen);
    b=emborronado_morf(a);
    %figure(1);imshow(b);pause;
    c=emborronado_lineal(b);
    c=emborronado_lineal(c);
    figure(1);imshow([a,b,c]);pause;
end

    