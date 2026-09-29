# 1. Filter nama pelanggan unik (3977?)
SELECT DISTINCT customer_name
FROM showroom.data_cabang;

# 2. Rekap transaksi kredit (4253)
SELECT order_id, branch, total_sales
FROM showroom.data_cabang
WHERE payment_type = 'Kredit';

# 3. Pembelian quantity terbanyak
SELECT *
FROM showroom.data_cabang
ORDER BY quantity DESC
LIMIT 5;

# 4. Model mobil "Hitam Metalik" (16)
SELECT DISTINCT product_name
FROM showroom.data_cabang
WHERE color = 'Hitam Metalik';

# 5. Komposisi metode
SELECT payment_type, count(payment_type) as jumlah_transaksi
FROM showroom.data_cabang
GROUP BY payment_type
ORDER BY jumlah_transaksi DESC;

# 6. Evaluasi margin
SELECT category, AVG(discount) as avg_discount
FROM showroom.data_cabang
GROUP BY category
ORDER BY avg_discount DESC;

# 7. Filter pendapatan
SELECT branch, SUM(total_sales) as total_pendapatan
FROM showroom.data_cabang
GROUP BY branch
HAVING total_pendapatan > 50000000000
ORDER BY total_pendapatan DESC;

# 8. Investigasi diskon (Rp31.799,9999) 318
SELECT order_id, product_name, discount
FROM showroom.data_cabang
WHERE discount > (
  SELECT AVG(discount)
  FROM showroom.data_cabang
);

# 9. Pendapatan Kategori
SELECT category, AVG(total_sales) as avg_total_sales
FROM (
  SELECT category, total_sales
  FROM showroom.data_cabang
  WHERE status = 'completed'
  )
GROUP BY category
ORDER BY avg_total_sales DESC;

# 10. Model mobil terlaris
WITH jumlah_transaksi_model AS (
    SELECT product_name, COUNT(*) as jumlah_transaksi
    FROM showroom.data_cabang
    GROUP BY product_name
)
SELECT *
FROM jumlah_transaksi_model
ORDER BY jumlah_transaksi DESC
LIMIT 3;

