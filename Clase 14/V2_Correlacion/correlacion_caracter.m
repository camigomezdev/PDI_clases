clear all
close all
clc
caracteres = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'];
alea=ceil(rand(1)*31);
b = imread([caracteres(alea),'.bmp']);
b = imresize(b,[49 27]);
d=[];
for i = 1:length(caracteres) % Se realiza un ciclo desde 1 hasta el tamaño del arreglo donde se almacena el alfabeto y los numeros.
    a = imread([caracteres(i),'.bmp']); % Secarga la imagen correspondiente al caracter en la posicion posicion indicada por Abcdario del arreglo.
    a = imresize(a,[49 27]); % Se redimenciona la imagen a un tamaño definido.
    c = corr2(a, b); % Se establece la correlacion entre la imagen cargada y la imagen extraida de la placa.
    d = [d,c]; % Se almacena la correlacion encontrada.
    figure(3);subplot(1,2,1);imshow(a);subplot(1,2,2);imshow(b);title(['correlación = ', num2str(c)]);
    pause(0.01);
end

figure; plot(d);