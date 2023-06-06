use db_praktikum;
-- menghitung rata-rata qty,nilai tertinggi qty
select avg(qty), min(qty), max(qty)
from tr_penjualan_dqlab;

-- menarik field nama produk dan fungsi agredasi dan nilai qty pada tr_penjualan_dqlab
select nama_produk, max(qty)
from tr_penjualan_dqlab;

-- GRUOP BY 
-- mengambil grouping nilai dari kolom nama produk
select nama_produk from tr_penjualan_dqlab group by nama_produk;

-- mengambil grouping nilai dari kolom nama produk dan quantity
select nama_produk from tr_penjualan_dqlab group by nama_produk, qty;

select nama_produk, qty 
from tr_penjualan_dqlab
group by 1, 2;

-- mengambil jumlah qty dari grouping nama produk terhadap seluruh row pada tabael transaksi
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk;

-- having
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk having sum(qty) > 2;

select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk having sum(qty) > 2
order by sum(qty);

-- latihan
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk having sum(qty) > 4;

-- melihat nama produk yang totoal jumlah produk terjual per kelompok nama produk sama dengan 9
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk having sum(qty) = 9;

-- melihat daftar kelompok nama produk dan total nilai penjualan (harga dikalikan jumlah dikurangi diskon) dengan dan urutan berdasarkan nilai penjualan terbesar 
select nama_produk, sum(qty)
from tr_penjualan_dqlab 
group by nama_produk, harga*qty;

select nama_produk, sum(qty)
from tr_penjualan_dqlab 
group by nama_produk, harga*qty
order by max(qty);
