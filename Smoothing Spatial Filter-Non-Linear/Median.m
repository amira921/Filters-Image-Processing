image = imread('cameraman.tif');

[rows,cols] = size(image);
out = image;
for i=2:rows-1
    for j=2:cols-1
        temp = [image(i-1, j-1) image(i-1, j) image(i-1, j + 1) image(i, j-1) image(i, j) image(i, j + 1) image(i + 1, j-1) image(i + 1, j) image(i + 1, j + 1)];
        temp = sort(temp);
        out(i, j)= temp(5);
    end
end
subplot(1,2,1), imshow(image);
subplot(1,2,2), imshow(out);

