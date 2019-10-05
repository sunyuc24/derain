clc
clear all;
close all;

bb = 16; % patch size: bb*bb
overlap = 3; % number of pixels between consecutive patches

img = imread('text_rainimg.jpg');
[N,M,dim]=size(img);
img = double(img);
NN = ceil((N-bb)/overlap) * overlap + bb;
MM = ceil((M-bb)/overlap) * overlap + bb;
img_new = 255 * zeros(NN,MM,dim);
img_new(1:N,1:M,:) = img;  

PI = img2col(img_new, bb, overlap);