% Data Structures and Clsses of Objects
clear; close all; clc

% Secara default Matlab akan menggunakan tipe data double
minval = realmin('double'); % smallest
maxval = realmax('double'); % largest

sin(pi); % ga nol (cuma nilai terdekat dari nol)

%%

clear
rng(0)% biar sama
A = rand(3, 4); % 3 x 4 matrix with uniformly distributed random numbers within the open interval [0.1]
% secara default akan berupa nilai A lima digit

format long
A;  % 16-digits double-precisions (ga ngaruh di presisi komputasinya cuma tampilan saja).

% ini baru ngubah presisi data
B = single(A); % bagus dipakai kalau ngurusin data raksasa
%whos

format short
A(1,3) = 4i + 3; % maksa ngubah seluruh data di A jadi kompleks
%whos

%%
clear; clc

rng(0)
% random numbers within interval [0, 255]
I1  = 255 * rand(100,100); 
I2 = 255 * rand(100, 100);
I3 = 255 * rand(100,100);

I = cat(3, I1,I2,I3);

% biar ga kegedean di bulatkan ke integer near the endpoint 
I = uint8(I);
imshow(I); % digunakan untuk menampilkan citra dari array 3 dim

%%
% Structure arrays

sample_1.location = 'Karangsambung';
sample_1.date = date;
sample_1.image = I;
sample_1.geochemistry = rand(10,10);

%sample_1.date %contains current date

sample_1

%% 
% Cell arrays
C = {'Karangsambung' date  I rand(10,10)};

