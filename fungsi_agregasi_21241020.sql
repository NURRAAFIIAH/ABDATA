-- menggunakan database
USE dqlabmartbasic;

-- FUNGSI AGREGASI
-- Menghitung Penjumlahan Nilai qty seluruh row pada tabel penjualan
SELECT sum(qty) 
FROM tr_penjualan_dqlab;

SELECT sum(nama_produk) 
FROM tr_penjualan_dqlab; -- Bisa tapi aka menghasilkan nilai 0

-- Menghitung jumlah seluruh row pada tabel penjualan
SELECT count(*) 
FROM tr_penjualan_dqlab;

-- Menghitung penjumlahan nilai Qty dan jumlah seluruh row di tabel penjualan
SELECT sum(qty), count(*) 
FROM tr_penjualan_dqlab;

-- Menghitung rata-rata qty, nilai maks qty, dan nilai minimum qty di tabel penjualan
SELECT avg(qty), max(qty), min(qty) 
FROM tr_penjualan_dqlab;

-- Menghitungjumlah nilai unik dari nama_produk pada tabel penjualan
SELECT count(distinct nama_produk) 
FROM tr_penjualan_dqlab;

SELECT count(*), count(distinct nama_produk) 
FROM tr_penjualan_dqlab; -- count asli 15 tapi count yang unik hanya 10

-- GROUP BY
-- Mengambil grouping nilai dari kolom nama_produk dari tabel tr_penjualan
SELECT nama_produk 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk;

-- Mengambil nilai grouping dari kolom nama_produk dan qty pada tabel penjualan
SELECT nama_produk, qty 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk, qty;

-- ORDER BY
SELECT nama_produk, qty 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk, qty 
ORDER BY qty desc; -- ditaro di paling terakhir

-- Mengambil jumlah qty dari grouping nama_produk terhadap seluruh row di tabel penjualan
SELECT nama_produk, sum(qty) 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk;

-- HAVING
-- KETIKA YANG DI FILTERING HASIL GROUPING , MAKA JANGAN MENGGUNAKAN WHERE TETAPI GUNAKAN HAVING
-- Mengambil jumlah qty di atas 2 dari grouping nama_produk terhadap seluruh row pada tabel penjualan
SELECT nama_produk, sum(qty) 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk 
having sum(qty) > 2;

-- LATIHAN
SELECT nama_produk, SUM(qty) AS total_terjual
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING total_terjual > 4;

SELECT nama_produk, SUM(qty) AS total_terjual
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING total_terjual = 9;

SELECT nama_produk, SUM((harga * jumlah) - diskon) AS total_penjualan
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_penjualan DESC;
