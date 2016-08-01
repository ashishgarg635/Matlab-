% Program for performing thresholding transformation on the image

clc ;						% To clear the screen
clear all;					% To clear the workspace variable and values
a = imread('image_filename');			% reading an image
[row,col] = size(a);				% getting the size of the image
b=a;						
T = input('Enter the value of Threshold : ');	% getting the threshold from the user
for i = 1 : 1 : row				% start of the 'for' loop
    for j = 1 : 1 : col
        if b(i,j) < T
            b(i,j) = 0;
        else
            b(i,j) = 255;
        end
    end
end
subplot(1,2,1);
imshow(a);					% showing the original image
title('Original Image');
subplot(1,2,2);
imshow(b);					% showing the image after thresholding
title('After Thresholding');