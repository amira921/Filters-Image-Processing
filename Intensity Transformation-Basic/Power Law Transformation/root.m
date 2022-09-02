image = imread('cameraman.tif');
double_value = im2double(image);

gamma= input('gamma greater than 1? ');
power = 1*(double_value.^gamma);  

subplot(1,2,1), imshow(image);
subplot(1,2,2), imshow(power)