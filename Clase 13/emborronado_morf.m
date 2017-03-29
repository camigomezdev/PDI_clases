function b = emborronado_morf(a)
    [fil,col,cap]= size(a);
    if cap==1;
        b=a
        return
    end
    b=reshape(a,[fil,col*cap]);
    se = strel('disk',12);
    %b1=imerode(b,se);
    b1=imdilate(b,se);
    %b1=imopen(b,se);
    %b1=imclose(b,se);
    b=b1;
    b=reshape(b1,[fil,col,cap]);
end