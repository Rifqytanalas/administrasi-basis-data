SELECT * FROM dqlab.ms_pelanggan_dqlab;

-- case 1
select nama_pelanggan,alamat 
from ms_pelanggan_dqlab;


-- case 2
select nama_produk, harga 
from ms_produk_dqlab;


-- case 3
select * from ms_produk_dqlab where harga > 15000 and nama_produk = 'Flashdisk DQLab 32 GB';

-- case 4
select * from ms_produk_dqlab where nama_produk = 'Flashdisk DQLab 32 GB'
or nama_produk = 'tas travel organizer digiskill.id'
or nama_produk = 'gantungan kunci DQLab' ;

-- case 5
select * from ms_produk_dqlab where harga < 50000;


-- case 6
select kode_pelanggan, nama_produk, qty, harga, qty*harga as total_harga
from tr_penjualan_dqlab where harga >= 200.000 
order by total_harga desc;


