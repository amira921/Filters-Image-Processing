x = imread('low.png');
y = imread('AddConstantScalarToImage.png');

[a, b, ~]=size(x);
y = imresize(y,[a,b]);

or_image = bitor(x,y);
imshow(or_image);