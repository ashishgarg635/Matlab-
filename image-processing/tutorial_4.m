% Program for showing the histograms of RGB components

clc;					% To clear the screen
clear all;				% To clear the workspace variable and values
a = imread('image_filename');		% reading an image
r = a(:,:,1);				% separating red component of the image		
g = a(:,:,2);				% separating green component of the image
b = a(:,:,3);				% separating blue component of the image
subplot(2,2,1);
imshow(a);				% showing image on the graph
title('Original Image');
subplot(2,2,2);
imhist(r);				% showing histogram of red component of image on the graph
title('RED Component');
subplot(2,2,3);
imhist(g);				% showing histogram of green component of image on the graph		
title('Green Component');
subplot(2,2,4);
imhist(b);				% showing histogram of blue component of image on the graph
title('Blue Component');