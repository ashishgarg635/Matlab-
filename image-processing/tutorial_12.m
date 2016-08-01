% Program to perform different transformations 

clc;					% To clear the screen
clear all;				% To clear the workspace variable and values
img = imread('image_fileame');		% reading an image
mask1 = fspecial('laplacian');		% generating the mask for 'laplacian' transformation
mask2 = fspecial('gaussian');		% generating the mask for 'laplacian' transformation
mask3 = fspecial('unsharp');		% generating the mask for 'laplacian' transformation
mask4 = fspecial('sobel');		% generating the mask for 'laplacian' transformation
s1 = imfilter(img,mask1);		% applying the 'laplacian' transformation
s2 = imfilter(img,mask2);		% applying the 'gaussian' transformation
s3 = imfilter(img,mask3);		% applying the 'unsharp' transformation
s4 = imfilter(img,mask4);		% applying the 'sobel' transformation
subplot(2,2,1);
imshow(s1);
title('Laplacian');
subplot(2,2,2);
imshow(s2);
title('Gaussian');
subplot(2,2,3);
imshow(s3);
title('Unsharp');
subplot(2,2,4);
imshow(s4);
title('Sobel');