image = imread('cameraman.tif');


[rows,cols] = size(image);
counts = zeros(1,256);

for i=1:rows
    for j=1:cols
        grayLevel=image(i,j);
        counts(grayLevel+1)=counts(grayLevel+1)+1;
    end
end

grayLevels = 0 : 255;

figure,
subplot(2,1,1),imshow(image);
subplot(2,1,2),bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'b');
