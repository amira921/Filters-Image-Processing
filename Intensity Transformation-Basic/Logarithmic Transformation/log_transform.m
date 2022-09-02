image = imread('cameraman.tif');
double_value = im2double(image);
c= input('c?');
out = c*log(1+double_value);

subplot(1,2,1), 
imshow(image);
subplot(1,2,2), 
imshow(out)