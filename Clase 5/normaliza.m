function b=normaliza(a)
    a = double(a);
    a = a/max(a(:))*255;
    a=uint8(a);
    [fil,col,cap] = size(a);
    b = reshape(a, fil, col*cap);
end
