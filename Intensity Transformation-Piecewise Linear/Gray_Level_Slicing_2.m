Img = imread('cameraman.tif');
L = input('L?');
H = input('H?');

[rows,cols] = size(Img);
for row_index=1:1:rows
    for col_index=1:1:cols
        if(Img(row_index,col_index)>=L && Img(row_index,col_index)<=H)
            Img(row_index,col_index) = 255;
        end
    end
end
figure, 
imshow(Img);