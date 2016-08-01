% Program showing both histogram and graph of components of an image

clc;					% To clear the screen
clear all;				% To clear the workspace variable and values
img = imread('image_filename');		% reading an image
r = img(:,:,1);				% separating red component of the image
g = img(:,:,2);				% separating green component of the image 
b = img(:,:,3);				% separating blue component of the image
subplot(4,2,1);
imshow(img)				% showing image on the graph
title('Original Image');
subplot(4,2,3);
imshow(r);				% showing red component of image on the graph
title('RED Component');
subplot(4,2,4);
imhist(r);				% showing histogram of red component of image on the graph
subplot(4,2,5);
imshow(g);				% showing green component of image on the graph
title('Green Component');
subplot(4,2,6);
imhist(g);				% showing histogram of green component of image on the graph
subplot(4,2,7);
imshow(b)				% showing blue component of image on the graph
title('Blue Component')
subplot(4,2,8)
imhist(b);				% showing histogram of blue component of image on the graph
	
