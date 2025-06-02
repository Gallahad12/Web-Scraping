-- Create Database
CREATE DATABASE Bhinneka_DB;

-- Create Table 
CREATE Table Produk
(
	PK_Produk SERIAL PRIMARY KEY,
	Nama_Produk TEXT,
	Cicilan_Produk_Perbulan NUMERIC,
	Harga_Produk NUMERIC,
	Link_Produk TEXT
);

-- Import data yang baru saja kita ambil ke dalam table Produk
COPY Produk(Nama_Produk, Cicilan_Produk_Perbulan, Harga_Produk, Link_Produk)
FROM 'D:\Hactive8\Phase 0\W4\Milestone\p0-coda006-rmt-m1-Gallahad12\Data_Produk_Storage_Final.csv'
DELIMITER ','
CSV HEADER;

-- Show table produk untuk memastikan kalau datanya memang sudah di import
SELECT *
from produk;