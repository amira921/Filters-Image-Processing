Image = imread('cameraman.tif');
k = input('k?');
AddImage = Image - k;
imshow(AddImage);
 