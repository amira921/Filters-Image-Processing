image = imread('cameraman.tif');

x = rand(size(image));
image(x(:) > 0.95) = 255;
[a, b] = size(image);
output = zeros(a,b);

for i=2:a-1
    for j=2:b-1
        sto = [image(i-1,j-1),image(i-1,j),image(i-1,j+1),image(i,j-1),image(i,j),image(i,j+1),image(i+1,j-1),image(i+1,j),image(i+1,j+1)];
        es = min(sto);
        output(i,j) = es;
    end
end
subplot(1,2,1), imshow(image);
subplot(1,2,2), imshow(uint8(output));
