clc
close all;%                                 La utilizacion de la transformada de fourier en el procesamiento
clear all;%                                 digital de imagenes permite realizar el manejo que se quiera como
[imagen paleta] = imread('grace.bmp');%     filtro sobre las frecuencias representadas
imagen = ind2gray(imagen,paleta);%          en la imagen. En esta sencilla tarea vemos como
IMAGEN = fftshift(fft2(imagen));%           eliminando de esta frecuencias y aplicando la 
[filas columnas] = size(imagen);%           transformada inversa podemos modificar o realizar
pausa=0.5;%                               una especie de marca de agua desde una foto, conservando solo los 
for i = 30:10:120%                          bordes
    subplot(2,2,1);
    imshow(imagen), title('Imagen Original'),
    subplot(2,2,2),
    pcolor(log10(abs(IMAGEN))), shading interp, 
    title('TTF');
    IMAGEN_1 = IMAGEN;
    IMAGEN_1(1:i,1:columnas) = 0;
    IMAGEN_1(filas-i:filas,1:columnas) = 0;
    IMAGEN_1(1:filas,1:i) = 0;
    IMAGEN_1(1:filas,columnas-i:columnas) = 0;
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
    imshow(imagen), title('Original'),
    subplot(2,2,2),
    pcolor(log10(abs(IMAGEN))), shading interp, 
    title('TTF');
    IMAGEN_2 = IMAGEN; 
    IMAGEN_2(i:filas-i,i:columnas-i) = 0;
    imagen_2 = real(ifft2(fftshift(IMAGEN_2)));  
    IMAGEN_2 = fftshift(fft2(imagen_2));	
    subplot(2,2,3);
    imagesc(imagen_2), title(['Imagen Filtrada. Borde = ',num2str(i)]),
    subplot(2,2,4),
    pcolor(log10(abs(IMAGEN_2))), shading interp, 
    title('TTF');
    pause %(pausa)
end
