image = imread('low.png');
subplot(1,2,1),imshow(image);

k = input('k?');
[rows, columns] = size(image);

for x=1:rows
    for y=1:columns
        R = image(x,y);
        if(R>=k)
            s=255;
            image(x,y) = s;
        else
            s=0;
            image(x,y) = s;
        end
    end
end
subplot(1,2,2), imshow(image);