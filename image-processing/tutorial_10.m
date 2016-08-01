% Program to perform the edge detection

clc;					% To clear the screen
clear all;				% To clear the workspace variable and values
img = imread('image_filename');		% reading an image
a = rgb2gray(img);			% converting rgb image into grayscale image
s1 = edge(a,'sobel');			% applying edge detection using 'sobel' algorithm
s2 = edge(a,'canny');			% applying edge detection using 'canny' algorithm
s3 = edge(a,'log');			% applying edge detection using 'log' algorithm
subplot(1,3,1);
imshow(s1);
subplot(1,3,2);
imshow(s2);
subplot(1,3,3);
imshow(s3);