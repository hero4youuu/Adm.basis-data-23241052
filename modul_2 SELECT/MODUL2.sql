-- NAMA  : SULFAN ADITYA PRASETYO
-- NIM   : 23241052
-- KELAS : B 
-- MODUL : 2 (SELECT)

-- Membuat data base
CREATE DATABASE pti_mart;

-- Menggunakan database
USE pti_mart;

-- Cek kolom dalam setiap 
DESCRIBE ms_pelanggan;
DESCRIBE ms_produk;
DESCRIBE tr_penjualan;

-- SELECT
-- Menggunakan SELECT untuk 1 Tabel
-- Mengambil kolom nama produk dari Tabel produk
SELECT nama_produk FROM ms_produk;

-- Mengambil lebih dari satu kolom dari seubah tabel
SELECT nama_produk, harga FROM ms_produk;

-- Mengambil semua kolom dari sebuah tabel
SELECT * FROM ms_produk;
 
 
 -- LATIHAN 
 -- Mengambil kode produk dan nama produk dari tabel produk 
 SELECT kode_produk, nama_produk FROM ms_produk;
 
 -- Mengambil seluruh tabel penjualan 
SELECT * FROM tr_penjualan;

-- PREFIX dan ALIAS
-- PREFIX, bagian objek objek database yang hirakrinya lebih tinggi 
-- Menggunakan prefix nama tabel untuk kolom nama_produk dari  tabel produk
SELECT ms_produk.nama_produk FROM ms_produk;

-- Menggunakan nama database dan tabel sebagai prefix untuk kolom nama_produk
SELECT pti_mart.ms_produk.nama_produk FROM ms_produk;

-- ALIAS, nama sementara untuk objek database
-- Mengganti sementara kolom nama_produk dengan ALIAS
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- Mengganti sementara tabel dengan ALIAS
SELECT nama_produk FROM ms_produk AS msp;


-- Kombinasikan PREFIX dan ALIAS 
SELECT msp.nama_produk FROM ms_produk AS msp;
-- untuk melihat nama pelanggan dan alamat 
  SELECT nama_pelanggan, alamat FROM ms_pelanggan;
-- untuk melihat nama produk dan harga
  SELECT nama_produk, harga FROM ms_produk;



