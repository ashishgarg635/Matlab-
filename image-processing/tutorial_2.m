% Program 

clc;					% To clear the screen	
clear all;				% To clear the workspace variable and values
a=imread('image_filename.png');		% reading an image
b=rgb2gray(a);				% converting rgb image into grayscale image
subplot(1,2,1);
imshow(a);				% showing the original image
title('Original Image');
subplot(1,2,2);
imshow(b);				% showing the grayscale image
title('Gray Image');