% Program for demonstrating the operations of resizing, rotation and cropping

clc ;					% To clear the screen
clear all;				% To clear the workspace variable and values
img = imread('image_filename');		% reading an image
a = rgb2gray(img);			% converting RGB image into grayscale image
b = histeq(a);
subplot(2,2,1);
imshow(img);				% showing the original image
title('Original Image');
subplot(2,2,2);
c=imresize(a,[20,30]);			% resizing the image
imshow(c);
title('Resized Image');
subplot(2,2,3);
c=imrotate(a,30);			% rotating the image by 30 degree
imshow(c);
title('Rotated Image');
subplot(2,2,4);
c = imcrop(a,[20,20,40,40]);		% cropping the image from (20,20) to (40,40)
imshow(c);
title('Cropped Image');