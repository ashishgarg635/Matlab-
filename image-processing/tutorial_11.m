% Program to perform masking on the image using masks of different sizes

clc;					% To clear the screen
clear all;				% To clear the workspace variable and values
img = imread('image_filename');		% reading an image
mask1 = ones(3,3)/9;			% creating mask of size 3x3
mask2 = ones(5,5)/25;			% creating mask of size 5x5
mask3 = ones(7,7)/49;			% creating mask of size 7x7
s1 = imfilter(img,mask1);		% performing masking using mask1
s2 = imfilter(img,mask2);		% performing masking using mask2
s3 = imfilter(img,mask3);		% performing masking using mask3
subplot(3,1,1);
imshow(s1);
subplot(3,1,2);
imshow(s2);
subplot(3,1,3);
imshow(s3);