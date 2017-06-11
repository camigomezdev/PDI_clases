clear all
close all
clc
% Carga los caracteres a ser operados
caracteres = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'];
% Elige un caracter aleatorio de los anteriores
alea=ceil(rand(1)*31);
% carga una imagen de la base de datos existente en la misma carpeta
imaname = (['./caracteres/', caracteres(alea)]);
imaname = ([imaname,'.bmp'])
b = imread(imaname);
% Se redimenciona la imagen para que no sea tan pesada
b = imresize(b,[49 27]);
d=[];
for i = 1:length(caracteres) % Se realiza un ciclo desde 1 hasta el tama�o del arreglo donde se almacena el alfabeto y los numeros.
    imaname = (['./caracteres/', caracteres(i)]); % se carga el nombre de la imagen del caracter en la posición i
    imaname = ([imaname,'.bmp']);
    a = imread(imaname); % Secarga la imagen correspondiente al caracter en la posicion posicion indicada por Abcdario del arreglo.
    a = imresize(a,[49 27]); % Se redimenciona la imagen a un tama�o definido.
    c = corr2(a, b); % Se establece la correlacion entre la imagen cargada y la imagen extraida de la placa.
    d = [d,c]; % Se almacena la correlacion encontrada.
    figure(3);subplot(1,2,1);imshow(a);subplot(1,2,2);imshow(b);title(['correlaci�n = ', num2str(c)]);
    pause(0.01);
end

figure; plot(d);
