image = imread('low.png');
subplot(1,2,1),imshow(image);

r1 = input('enter r1?');
r2 = input('enter r2?');
s1 = input('enter s1?');
s2 = input('enter s2?');

[x,y] = size(image);
for i=1:x
  for j=1:y
      image(i,j) = ((s2-s1)/(r2-r1))*(image(i,j) - r1) + s1;
  end
end
subplot(1,2,2),imshow(image);

