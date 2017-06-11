% Método usado para difuminar la imagen utilizando un emborronado
% por medio de un filtrado especial por promedio de color en los pixeles
function b = emborronado_lineal(a)
%       'average'   averaging filter
%       'disk'      circular averaging filter
%       'gaussian'  Gaussian lowpass filter
%       'laplacian' filter approximating the 2-D Laplacian operator
%       'log'       Laplacian of Gaussian filter
%       'motion'    motion filter
%       'prewitt'   Prewitt horizontal edge-emphasizing filter
%       'sobel'     Sobel horizontal edge-emphasizing filter
    [fil,col,cap]= size(a);
    if cap==1;
        b=a
        return
    end
    b=reshape(a,[fil,col*cap]);

    %H = fspecial('motion',20,45);
    %b1 = imfilter(b,H,'replicate');
    %figure; imshow(b1); pause;
    % Como elemento estructurante para el filtro se utiliza H, que define
    % que será por medio del cálculo del tono promedio de color de un área de 10px
    H = fspecial('average',[10 10]);
    % Se aplica el filtro utilizando el elemento H
    b1 = imfilter(b,H);
    %figure; imshow(b1); pause;
    b=b1;
    b=reshape(b1,[fil,col,cap]);
end
