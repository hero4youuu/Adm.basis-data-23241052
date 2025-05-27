-- Nama : Sulfan Aditya Prasetyo
-- Nim :23241052
-- kelas: B
-- modul 4 menggunakan ORDER BY,ASC dan desc


-- Menggunakan Database
USE pti_mart;

-- ORDER BY
-- ORDER BY (Menyusun urutan data berdasarkan nilai  sebuah coloum)
-- Ambil nama produk dan qty dari tabel penjualan urutan qty
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty;

-- Ambil nama produk dan qty dari tb penjualan urutkan qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;

-- Latihan mandiri 1
SELECT * FROM tr_penjualan ORDER BY qty, tgl_transaksi;
SELECT * FROM pelanggan ORDER BY qty, nama_pelanggan;
SELECT * FROM pelanggan ORDER BY alamat;

-- ORDER BY ASC dan desc
-- Ambil nama produk,qty dari tb penjualan urutkan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;

-- ambil nama produk, qty dari tb penjualan urutkan qty dan nama produk besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk DESC;

-- Latihan mandiri 2
SELECT * FROM tr_penjualan ORDER BY qty DESC, tgl_transaksi  DESC;
SELECT * FROM pelanggan ORDER BY qty, nama_pelanggan DESC;
SELECT * FROM pelanggan ORDER BY alamat DESC;

-- ORDER BY dari hasil Perhitungan 
-- Ambil nama_produk, qty, harga*qty dari tb penjualan urutkan harga*qty besar-kecil
SELECT nama_produk, harga, qty, harga*qty AS total
FROM tr_penjualan
ORDER BY total DESC;

-- Latihan Mandiri 3
-- Cobalah Pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
SELECT nama_produk, qty, harga, diskon_persen, qty*harga AS total_harga,
((qty*harga)) - ((diskon_persen/100)*harga) AS total_bayar
FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY diskon_persen DESC, total_bayar DESC;

-- Praktek 6
-- ORDER BY menggunakan WHERE
-- Ambil nama produk, qty, dari tb penjualan yang nama produk berawalan huruf 'f' urut qty
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk LIKE 'f%'
ORDER BY qty DESC;

-- Tambahan dari Latihan Mandiri:
-- 1. Tampilkan semua kolom dari transaksi penjualan yang memiliki diskon dan diurutkan berdasarkan harga tertinggi
SELECT *
FROM tr_penjualan
WHERE diskon_persen IS NOT NULL
ORDER BY harga DESC;

-- 2. Tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan 
--    yang memiliki harga minimal seratus ribu rupiah dan diurutkan berdasarkan harga tertinggi
SELECT nama_produk, qty AS kuantitas_pembelian, harga
FROM tr_penjualan
WHERE harga >= 100000
ORDER BY harga DESC;

-- 3. Tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan 
--    yang memiliki harga minimal seratus ribu rupiah atau nama produk berawalan karakter 'T'
--    dan diurutkan berdasarkan diskon tertinggi
SELECT nama_produk, qty AS kuantitas_pembelian, harga
FROM tr_penjualan
WHERE harga >= 100000 OR nama_produk LIKE 'T%'
ORDER BY diskon_persen DESC;

-- Cek data pelanggan
SELECT * FROM pelanggan;




