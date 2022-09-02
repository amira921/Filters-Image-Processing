x = imread('low.png');
y = imread('AddConstantScalarToImage.png');

[a, b, ~]=size(x);
y = imresize(y,[a,b]);

anded_image = bitand(x,y);
imshow(anded_image);