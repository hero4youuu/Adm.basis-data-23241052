CREATE DATABASE penjualan_sparepart_motor;
USE penjualan_sparepart_motor;

CREATE TABLE karyawan (
    id_karyawan INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    nik VARCHAR(20),
    no_tlp VARCHAR(20),
    jenis_kelamin ENUM('Laki-Laki', 'Perempuan'),
    alamat TEXT
);

-- Tabel Sparepart
CREATE TABLE sparepart (
    id_sparepart INT AUTO_INCREMENT PRIMARY KEY,
    nama_sparepart VARCHAR(100),
    merek VARCHAR(50),
    harga_jual DECIMAL(15, 2)
);

-- Tabel Merek (belum dipakai, opsional)
CREATE TABLE merek (
    id_merek INT AUTO_INCREMENT PRIMARY KEY,
    nama_merek VARCHAR(50)
);

-- Tabel Supplier
CREATE TABLE supplier (
    id_supplier INT AUTO_INCREMENT PRIMARY KEY,
    nama_supplier VARCHAR(100),
    no_tlp VARCHAR(20),
    alamat TEXT
);

-- Tabel Customer
CREATE TABLE customer (
    id_customer INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    no_tlp VARCHAR(20),
    alamat TEXT
);

-- Tabel Transaksi
CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    id_customer INT,
    id_karyawan INT,
    id_sparepart INT,
    jumlah INT,
    metode_pembayaran ENUM('Cash', 'Transfer'),
    tanggal DATE,
    FOREIGN KEY (id_customer) REFERENCES customer(id_customer),
    FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan),
    FOREIGN KEY (id_sparepart) REFERENCES sparepart(id_sparepart)
);

-- Data Karyawan
INSERT INTO karyawan (nama, nik, no_tlp, jenis_kelamin, alamat)
VALUES
('Rizki', '521007818', '087776775665', 'Laki-Laki', 'Jln. Apa aja no 1 Monjok, Mataram, NTB'),
('Agus', '521009210', '087776775901', 'Laki-Laki', 'Jln. Tok aja no 5 Montok, Mataram, NTB');

-- Data Sparepart
INSERT INTO sparepart (nama_sparepart, merek, harga_jual)
VALUES 
('karburator', 'Yamaha', 150000),
('piston', 'Honda', 120000),
('shockbreaker', 'Suzuki', 180000),
('ban', 'Kawasaki', 200000),
('dinamo stater', 'Yamaha', 175000),
('kruk as', 'Honda', 220000),
('arm swing', 'Suzuki', 160000),
('lampu', 'Yamaha', 50000),
('spul', 'Kawasaki', 90000),
('oli', 'Honda', 45000),
('filter', 'Yamaha', 30000),
('aki', 'Suzuki', 100000);

-- Data Supplier
INSERT INTO supplier (nama_supplier, no_tlp, alamat)
VALUES
('Supplier A', '08123456789', 'Jln. Mawar No.1, Mataram'),
('Supplier B', '08198765432', 'Jln. Melati No.2, Mataram');

-- Data Customer (menambahkan 5 customer baru)
INSERT INTO customer (nama, no_tlp, alamat)
VALUES
('Budi', '08134567890', 'Jln. Cempaka No.3, Mataram'),
('Ani', '08234567891', 'Jln. Kenanga No.4, Mataram'),
('Siti', '08345678901', 'Jln. Dahlia No.5, Mataram'),
('Deni', '08456789012', 'Jln. Anggrek No.6, Mataram'),
('Rina', '08567890123', 'Jln. Melati No.7, Mataram'),
('Joko', '08678901234', 'Jln. Mawar No.8, Mataram');

-- Data Transaksi (menambahkan transaksi baru)
INSERT INTO transaksi (id_customer, id_karyawan, id_sparepart, jumlah, metode_pembayaran, tanggal)
VALUES
(1, 1, 1, 2, 'Cash', '2025-04-20'),
(2, 2, 4, 1, 'Transfer', '2025-04-21'),
(3, 1, 5, 3, 'Cash', '2025-04-22'),
(4, 2, 2, 1, 'Transfer', '2025-04-23'),
(5, 1, 6, 2, 'Cash', '2025-04-24'),
(6, 2, 8, 4, 'Transfer', '2025-04-25');

-- Menampilkan data transaksi gabungan
select * from  karyawan;
select * from  sparepart;
select * from  supplier;
select * from  customer;
select * from transaksi;


-- Tugas Modul 2 (SELECT)

-- Mengambil kolom nama_sparepart dari Tabel sparepart
SELECT nama_sparepart FROM sparepart;

-- Mengambil lebih dari satu kolom dari sebuah tabel
SELECT nama_sparepart, harga_jual FROM sparepart;

-- Mengambil nama dan nomor telepon dari tabel customer
SELECT nama, no_tlp FROM customer;

-- Menggunakan prefix nama tabel untuk kolom nama_sparepart dari tabel sparepart
SELECT sparepart.nama_sparepart FROM sparepart;

-- Mengganti sementara kolom nama_sparepart dengan ALIAS
SELECT nama_sparepart AS ns FROM sparepart;
-- tanpa menggunkan AS
SELECT nama_sparepart ns FROM sparepart;

-- Mengganti sementara tabel dengan ALIAS
SELECT nama_sparepart FROM sparepart AS sp;

-- Kombinasikan PREFIX dan ALIAS
SELECT sp.nama_sparepart FROM sparepart AS sp;

-- Untuk melihat nama karyawan dan alamatnya
SELECT nama, alamat FROM karyawan;

-- Untuk melihat nama supplier dan nomor telepon
SELECT nama_supplier, no_tlp FROM supplier;

-- Menampilkan ID transaksi, tanggal, dan metode pembayaran dari tabel transaksi
SELECT id_transaksi, tanggal, metode_pembayaran FROM transaksi;