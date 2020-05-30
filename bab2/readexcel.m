clear all; close all; clc
data = xlsread('mywork.xlsx', 1);

data1 = data(:, 1);
data2 = data(:, 2);

plot(data2, data1)