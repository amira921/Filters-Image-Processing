Img = imread('cameraman.tif');

% Bits
b1 = double(bitget(Img,1));
b2 = double(bitget(Img,2));
b3 = double(bitget(Img,3));
b4 = double(bitget(Img,4));
b5 = double(bitget(Img,5));
b6 = double(bitget(Img,6));
b7 = double(bitget(Img,7));
b8 = double(bitget(Img,8));

% plots
figure,
subplot(3,3,1)
imshow(Img), title('Original:'); 
subplot(3,3,2)
imshow(b1), title('Bit Plan: 1');
subplot(3,3,3)
imshow(b2), title('Bit Plan: 2');
subplot(3,3,4)
imshow(b3), title('Bit Plan: 3');
subplot(3,3,5)
imshow(b4), title('Bit Plan: 4'); 
subplot(3,3,6)
imshow(b5), title('Bit Plan: 5');
subplot(3,3,7)
imshow(b6), title('Bit Plan: 6');
subplot(3,3,8)
imshow(b7), title('Bit Plan: 7');
subplot(3,3,9)
imshow(b8), title('Bit Plan: 8');

