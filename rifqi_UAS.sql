use db_praktikum;

-- nama : Muh Rifqi Ibnu Batuta
-- NIM  : 21241063
-- Matkul: administrasi basis data

-- Soal No 1
select kode_pelanggan,nama_produk,qty,harga as total_harga 
from tr_penjualan_dqlab where harga > 200000 order by total_harga;

-- soal N0 2
select tp.kode_transaksi, tp.kode_pelanggan, mp.nama_pelanggan, tp.kode_produk, tp.nama_produk, tp.harga, tp.qty, sum(qty) > 3
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- soal No 3



