gray_image = imread('laplace.PNG');
image = rgb2gray(gray_image);
image = double(image);

Laplacian = [0 1 0; 1 -4 1; 0 1 0];
out = conv2(image, Laplacian, 'same');

subplot(1,2,1), imshow(gray_image);
subplot(1,2,2), imshow(out);
