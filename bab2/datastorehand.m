% Data Storage and Handling

clear; close; clc
load geochem.txt % loading data
save geochem_new.mat % save seluruh yg ada di workspace jd binary format
save geochem_new.mat geochem % hanya save data geochem bukan seluruh workspace
save geochem_new.txt geochem -ascii % save data geochem dalam bentuk ascii file.

%%
clear
fid = fopen('geochem.txt'); % membaca read-only mode (fid = file identifier)
C = textscan(fid, '%u %f %f', 'Headerlines', 1, 'CollectOutput', 1); %
%textscan digunakan untuk menuliskan matriks di Cell array C
% %u = 32-bit unsigned integer 
% %f =  64-bit double float
% Headerlines, 1 = a single headerline is ignored
% CollectOutput, 1 = textscan menggabungkan data type yg sama ke dalam array tunggal
fclose(fid); % menutup file identifier

data1 = C{1}; % sample ID
data2 = C{2}; % Percent C, Percent S

% Menggabungkan data
data = double(data1(:));
data = cat(2, data, data2);

%%
clear; clc
fid = fopen('geophys.txt');
data = textscan(fid, '%u %f %f %f %s %s', 'Headerlines',1);
% %s = character (string)
fclose(fid);

% Untuk diubah harus berbentuk:
% date (MM/DD/YY)
% time (HH:MM:SS.SS)
data_date_serial = datenum(data{5}); % serial num1 = Jan-1-0000
data_time_serial = datenum(data{6});

% convert to datetime array
data_date = datevec(data_date_serial); % Y M  D h m s
data_time = datevec(data_time_serial); 

%%
clear
data = load('geochem.txt');
data = data'; % karena fungsi fprintf menuliskan data dalam bentuk kolom (jadi baris pertama dulu jadi kolom 1, dst)

fid = fopen('geochem_formated.txt', 'w'); % membuka untuk menulis
fprintf(fid, '%u %6.4f %6.4f\n', data); 
% 6 karakter dengan 4 angka di belakang koma
fclose(fid);

%edit geochem_formated.txt (buka di Matlab editor)
