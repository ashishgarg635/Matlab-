% Program for demonstrating the log transformation

clc;							% To clear the screen
clear all;						% To clear the workspace variable and values
img = imread('image_filename');				% reading an image
img = im2double(img);					% converting the pixels unit from 'int' to 'double'
[r,c] = size(img);					% getting the size of the image
t = img;					
const = input('Enter the value of constant : ');	% asking for the value of log constant
for i =1 : 1 : r					% start of the 'for' loop
    for j = 1 : 1 : c
        t(i,j) = const * log( 1 + img(i,j));		% applying the log transformation
    end
end
subplot(1,2,1);
imshow(img);						% showing the original image
title('Original Image');
subplot(1,2,2);
imshow(t);						% showing the image after log() transformation
title('After log Transformation');