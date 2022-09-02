img = imread('cameraman.tif');

% Mask Definition
f = 1/16*[1,2,1;2,4,2;1,2,1];

% Apply filter2 function
Noi_img = imnoise(img,'salt & pepper', 0.02);
de_noi = filter2(f,Noi_img);

figure;
subplot(1,2,1);imshow(img);
subplot(1,2,2);imshow(uint8(de_noi));