clear all; close all; clc

A = [2 4 3 7; 9 3 -1 2; 1 9 3 7; 6 6 3 -2];
sum(A); % matlab lebih memilih bekerja dengan array kolom
b = sum(sum(A)); % jum seluruhnya
whos; % mengetahui var aktif

A(3,2) = 30;
A(3,1:4) = [1 3 3 5]; % atau
A(3, :) = [1 3 3 5];
c = 0:10; 
c = 0:.5:10;

B = [4 2 6 5; 7 8 5 6; 2 1 -8 -9; 3 1 2 3];
C = A * B';
C = A .* B;