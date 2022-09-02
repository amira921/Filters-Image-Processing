image = imread('cameraman.tif');
subplot(1,2,1), 
imshow(image);

% NEGATIVE
L = 2 ^ 8;                     
neg = (L - 1) - image;
subplot(1,2,2), 
imshow(neg);