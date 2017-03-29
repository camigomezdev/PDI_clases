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
    H = fspecial('average',[10 10]);
    b1 = imfilter(b,H);
    %figure; imshow(b1); pause;
    b=b1;
    b=reshape(b1,[fil,col,cap]);
end
