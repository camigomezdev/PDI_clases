clc
close all;
clear all;
% La utilizacion de la transformada de fourier en el procesamiento
% digital de imagenes permite realizar el manejo que se quiera como
% filtro sobre las frecuencias representadas
% en la imagen. En esta sencilla tarea vemos como
% eliminando de esta frecuencias y aplicando la
% transformada inversa podemos modificar o realizar
% una especie de marca de agua desde una foto, conservando solo los bordes
[imagen paleta] = imread('grace.bmp');
% Convierte la imagen a escala de grises, removiendo la saturación de colores y
% dejando únicamente la luminosidad
imagen = ind2gray(imagen,paleta);
% Se aplica la transformación de Fourier para obtener los valores de las frecuencias
% presentes en la imagen
IMAGEN = fftshift(fft2(imagen));
[filas columnas] = size(imagen);
pausa=0.5;
% Se aplica la transformación de Fourier a la imagen original
for i = 30:10:120
    subplot(2,2,1);
    % Se muestra la imagen original y el histograma de la transformada de Fourier
    % con filtro paso alto
    imshow(imagen), title('Imagen Original'),
    subplot(2,2,2),
    pcolor(log10(abs(IMAGEN))), shading interp, title('TTF');
    IMAGEN_1 = IMAGEN;
    % Se va omitiendo más regiones de filas y columnas en el histograma de Fourier
    % con cada paso del ciclo (como tiene pause es cuando se presione una tecla)
    IMAGEN_1(1:i,1:columnas) = 0;
    IMAGEN_1(filas-i:filas,1:columnas) = 0;
    IMAGEN_1(1:filas,1:i) = 0;
    IMAGEN_1(1:filas,columnas-i:columnas) = 0;
    % Se combina la imagen original con la imagen transformada con el histograma
    % para obtener el X de la imagen
    imagen_1 = real(ifft2(fftshift(IMAGEN_1)));
    IMAGEN_1 = fftshift(fft2(imagen_1));
    subplot(2,2,3);
    imagesc(imagen_1), title(['Imagen Filtrada. Borde = ',num2str(i)]),
    subplot(2,2,4),
    pcolor(log10(abs(IMAGEN_1))), shading interp,
    title('Transformada de Fourier');
    pause%(pausa)

end
i=125;
for i = 125:-10:80
    subplot(2,2,1);
    % Se muestra la imagen original y el histograma de la transformada de Fourier
    % con filtro paso bajo
    imshow(imagen), title('Original'),
    subplot(2,2,2),
    pcolor(log10(abs(IMAGEN))), shading interp,
    title('TTF');
    IMAGEN_2 = IMAGEN;
    % Se va omitiendo más regiones de filas y columnas en el histograma de Fourier
    % con cada paso del ciclo (como tiene pause es cuando se presione una tecla)
    IMAGEN_2(i:filas-i,i:columnas-i) = 0;
    % Se combina la imagen original con la imagen transformada con el histograma
    % para obtener el X de la imagen
    imagen_2 = real(ifft2(fftshift(IMAGEN_2)));
    IMAGEN_2 = fftshift(fft2(imagen_2));
    subplot(2,2,3);
    imagesc(imagen_2), title(['Imagen Filtrada. Borde = ',num2str(i)]),
    subplot(2,2,4),
    pcolor(log10(abs(IMAGEN_2))), shading interp,
    title('TTF');
    pause %(pausa)
end
