-- Nama : Azzam
-- NIM : 23241073
-- kelas : B

-- membuat database
CREATE DATABASE mandalika_mart;


-- menggunakan 'mandalika mart'
USE mandalika_mart;

-- membuat tabel dalam database mandalikamart
CREATE TABLE member (
	member_id varchar(10),
    username varchar(20),
    nama varchar(100),
    tanggal_lagir datetime,
    angka_favorit int);
    
    
CREATE TABLE produk (
    id_produk varchar(10),
    nama_produk varchar(25),
    kategori varchar(15),
    harga int,
    qty int);
    
    
    
CREATE TABLE transaksi_penjualan (
    tgl_jual datetime,
    id_produk varchar(10),
    member_id varchar(10),
    nama_produk varchar(25),
    harga int,
    qty int);
    
    
    -- mengupdate primary key table table member, produk
    ALTER TABLE member
    ADD PRIMARY KEY (member_id);
    
    ALTER TABLE produk
    ADD PRIMARY KEY (id_produk);
    
    -- mengupdate foreign key table transaksi_penjualan
    ALTER TABLE transaksi_penjualan
    ADD CONSTRAINT FK_memberTransaksi
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk);
    
    
    
    
    
    