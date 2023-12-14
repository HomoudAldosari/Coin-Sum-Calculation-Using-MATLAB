clear all
close all
clc
% Read and show image
img=imread('coins.jpg');
imshow(img)

% Transform the image to level grey image
grayImg=im2gray(img);

% Remove noise 
median_filtered_img = medfilt2(grayImg);
figure;
imshow(median_filtered_img);
title('Median Filtered Image');

% I initially employed this approach to ascertain the range of radii for circles.
%d = drawline;
%pos = d.Position;
%diffPos = diff(pos);
%diameter = hypot(diffPos(1),diffPos(2))

% specify the range of possible radii for the circles to be detected
rMin = 94;
rMax = 116;

% Apply Hough Circle Transform
%[centers, radii]: These are the output variables. After running the imfindcircles function, it returns the detected circle centers (centers) and their corresponding radii (radii).
%imfindcircles: This function is part of the Image Processing Toolbox in MATLAB and is used for circle detection in images.
% "ObjectPolarity", "dark": This parameter specifies that the circles to be detected are expected to be darker than the background.
% Sensitivity => adjust sensitivity to control circle detection
%"Method", "twostage": This specifies the method used by the circle detection algorithm. 
[centers,radii] = imfindcircles(median_filtered_img,[rMin rMax],"ObjectPolarity","dark", ...
    "Sensitivity",0.98,"Method","twostage")

% Display the detected circles
figure
imshow(median_filtered_img)

% to calculate number of coins
numCircles = length(centers);

%viscircles: This is a MATLAB function used for visualizing circles on an image.
h = viscircles(centers,radii);

% Display the detected circles with title of totle of coins and number of coins
figure
imshow(median_filtered_img)
h2 = viscircles(centers,radii);

Amount=0;
% for loop to calculate sum of coins 
for i = 1:numCircles
if radii(i) > rMin && radii(i) < 106
    Amount = Amount + 0.25;
elseif radii(i) > 97 && radii(i) < 108
    Amount = Amount + 0.5;
elseif radii(i) > 106 && radii(i) < 112 
    Amount = Amount + 1;
elseif radii(i) > 110 && radii(i) < rMax 
    Amount = Amount+2;
end
end

% This is title above image
fprintf('Total amount of coins: %.2f SAR, Number of coins %i', Amount,numCircles);
title(['Total of coins: ', sprintf('%.2f SAR, Number of coins %i ', Amount, numCircles)])