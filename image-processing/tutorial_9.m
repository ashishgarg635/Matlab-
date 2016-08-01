% Program for demonstrating the Power transformation

clc;							% To clear the screen
clear all;						% To clear the workspace variable and values
img = imread('image_filename');				% reading an image
img = im2double(img);					% converting the pixels unit from 'int' to 'double'
[r,c] = size(img);					% getting the size of the image
t = img;
const = input('Enter the value of constant : ');	% getting the value of constant from user
g = input('Enter the value of Gamma : ')		% getting the gamma level from the user
for i =1 : 1 : r
    for j = 1 : 1 : c
        t(i,j) = const * ( img(i,j) ^ g);		% applying the power transformation
    end
end
subplot(1,2,1);
imshow(img);						% showing the original image
title('Original Image');
subplot(1,2,2);
imshow(t);						% showing the image recevied after power transformation
title('After Power Transformation');