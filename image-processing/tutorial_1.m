%  Program describing to find the inverse of an image

clc;					% To clear the screen
clear all;				% To clear the workspace variable and values
a=imread('image_filename.png');		% reading an image
b=255-a;				
subplot(1,2,1);				% setting the position to show image
title('Original Image');
imshow(a);				% showing the image on the plotted postition
subplot(1,2,2);
title('Inversed Image');
imshow(b);				% showing the inverse of image on the plotted postition