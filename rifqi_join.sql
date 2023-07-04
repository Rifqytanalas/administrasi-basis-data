use test;
select*from ms_produk_dqlab;
desc ms_pelanggan_dqlab;
desc tr_penjualan_dqlab;

-- mengambil kolom kode pelanggan , nama pelanggan,nama produk, qty
 select tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
 from tr_penjualan_dqlab as tp 
 join ms_pelanggan_dqlab as mp
 on tp.kode_pelanggan = mp.kode_pelanggan;
 
 -- cross join
 -- merngambil kolom, nama pelanggan,nama produk, qty tanpa relationship keys
  select mp.nama_pelanggan, tp.nama_produk, tp.qty
 from tr_penjualan_dqlab as tp 
 join ms_pelanggan_dqlab as mp
 on true;
 
 -- left outer join
 -- mengambil kolom nama pelanggan,nama produk, qty
 select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
 from tr_penjualan_dqlab as tp 
 left outer join ms_pelanggan_dqlab as mp
 on tp.kode_pelanggan = mp.kode_pelanggan;
 
 -- right outer join
 --  mengambil kolom nama pelanggan,nama produk, qty dengan right outer join
 select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
 from tr_penjualan_dqlab as tp 
 right outer join ms_pelanggan_dqlab as mp
 on tp.kode_pelanggan = mp.kode_pelanggan;
 