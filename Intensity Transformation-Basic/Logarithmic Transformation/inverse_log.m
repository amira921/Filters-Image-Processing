image = imread('cameraman.tif');
double_value = im2double(image);

c= input('c?');
inverse = (exp(double_value) .^ (1/c)) - 1;

subplot(1,2,1), imshow(image);
subplot(1,2,2), imshow(inverse)