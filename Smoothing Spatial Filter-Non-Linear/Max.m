image = imread('cameraman.tif');

max_Image = zeros(size(image));
modifyA = padarray(image,[1 1]);
x =(1:3)';
y =(1:3)';

for i= 1:size(modifyA,1)-2
    for j=1:size(modifyA,2)-2
        window = reshape(modifyA(i+x-1,j+y-1),[],1);
        max_Image(i,j) = max(window);
    end
end
max_Image = uint8(max_Image);

subplot(1,2,1), imshow(image);
subplot(1,2,2), imshow(max_Image);
