# Coin-Sum-Calculation-Using-MATLAB
# Project Description: Coin Sum Calculation Using MATLAB

# Objective:
The primary goal of this MATLAB project is to localize and calculate the total sum of Saudi coins in an image. The image, 'coins.jpg', contains coins of denominations 0.25 SAR, 0.5 SAR, 1 SAR, and 2 SAR.

# Project Steps:

1-Image Loading and Display:

Read and display the image 'coins.jpg', which features various Saudi coins.
Image Transformation:

Transform the image into a grayscale level image, simplifying the subsequent image processing steps.
Noise Elimination:

Apply a noise reduction filter to enhance the quality of the image and facilitate accurate coin detection.
Radius Range Determination:

Determine and ascertain the range of radii for circles in the image. This step is crucial for accurately detecting and delineating the coins.
Coin Detection:

Implement an algorithm to detect coins by drawing circles around them. This involves leveraging the previously determined radius range.
Algorithm for Coin Value Calculation:

Devise a custom algorithm to calculate the sum of coins. A for loop with conditional statements is utilized to associate specific radii with corresponding coin denominations:
If the radius equals 97, calculate the value as 0.25 SAR.
If the radius equals 106, calculate the value as 0.5 SAR.
If the radius equals 108, calculate the value as 1 SAR.
If the radius equals 112, calculate the value as 2 SAR.
Result Display:

Display the result of the algorithm, showcasing the calculated sum of all coins present in the image.
Conclusion:
This MATLAB project seamlessly integrates image processing techniques and custom algorithms to efficiently detect and calculate the total sum of Saudi coins in the provided image.
