use dqlabmartbasic;

SELECT * FROM tr_penjualan_dqlab;
SELECT * FROM ms_produk_dqlab;
SELECT kode_pelanggan, sum(qty), sum(harga), qty%3 FROM tr_penjualan_dqlab;

-- jawaban 2
SELECT nama_produk, qty, harga, qty*harga AS total
FROM tr_penjualan_dqlab
WHERE SUBSTRING(nama_produk, 2, 1) = 'L'
AND (qty * harga) > 100000
ORDER BY total DESC;

-- jawaban 3
SELECT kode_transaksi, kode_produk, tgl_transaksi, nama_produk, tgl_transaksi
FROM tr_penjualan_dqlab
WHERE year(tgl_transaksi)>2019 
ORDER BY tgl_transaksi ASC;