% Manipulasi array

clear; clc; close all
format compact

A = [2 4 3; 9 3 -1];
B = [1 9 3; 6 6 3];

%% Concatenate
C = cat(1, A, B); % dim = 1 (pada dimensi 1 alias baris) atau
C = vertcat(A, B);

D = cat(2, A, B); % dim = 2 (pada dimensi 2 alias kolom) atau
D = horzcat(A, B);

E = cat(3, A, B); % dim = 3 (pada dimensi 3 alias bikin tensor)
size(E); % cara tahu dimensi array nya.
length(E); % hanya digunakan untuk mengetahui dimensi array terbanyak saja.

F = flipud(A); % membalik nilai up and down matriks (pada sumbu tengah).
F = fliplr(A); % membalik nilai left and right matriks (pada sumbu tengah).

G = circshift(A, 1, 2); % menggeser pada K = 1 (posisi 1) pada dimensi 2 (kolom).

H = reshape(A, [3 2]); % array nya diambil per baris jadi misalkan dlm hal ini
% 2 lalu 9 lalu 4 (sudah memenuhi baris 3) lalu lanjut lagi di kolom berikutnya 3 lalu 3 lalu -1.

I = sort(C, 1, 'ascend'); % mengurutkan array C pada dimensi 1 (baris) sesuai dengan aturan ascending
J = sortrows(A, 2); %mengurutkan baris array A berdasarkan kolom 2

K = ismember(A, B); % mengetahui apakah elemen2 di dalam array A ada di dalam array B.

% Mengganti elemen di suatu array
L = A;
L(L < 0) = NaN;
% mengganti nilai array kalo dibawah nol jadinya NaN (biasa digunakan
%untuk memproses DEM dimana nilai di bawah nol (dibawah permukaan laut dianggap NaN)
% alternatif lain umumnya kita dapat menggunakan nilai -32768 sesuai kesepakatan pada DEM
M = isnan(L); % mengetahui nilai NaN di dalam suatu array

N = unique(A);  % untuk mengetahui nilai unik di dalam suatu array
