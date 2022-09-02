image = imread('cameraman.tif');

numofpixels = size(image,1)*size(image,2);
HIm = uint8(zeros(size(image,1),size(image,2)));
freq = zeros(256,1);
probc = zeros(256,1);
output = zeros(256,1);

for i=1:size(image,1)
    for j=1:size(image,2)
        value = image(i,j);
        freq(value+1) = freq(value+1)+1;
    end
end

sum = 0;
no_bins = 255;
for i=1:size(freq)
    sum = sum+freq(i);
    probc(i) = sum/numofpixels;
    output(i) = round(probc(i)*no_bins);
end

for i=1:size(image,1)
    for j=1:size(image,2)
        HIm(i,j) = output(image(i,j)+1);
    end
end

subplot(2,1,1), imshow(HIm);
subplot(2,1,2),bar(HIm, numofpixels, 'BarWidth', 1, 'FaceColor', 'b');

