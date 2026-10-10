CREATE OR REPLACE TABLE `rakamin-kf-analytics-2026.kimia_farma.analysis_table_kf` AS
SELECT 
  -- 1. Data Transaksi
  t.transaction_id,
  t.date,
  
  -- 2. Data Cabang
  t.branch_id,
  c.branch_name,
  c.kota,
  c.provinsi,
  c.rating AS rating_cabang,
  
  -- 3. Data Pelanggan & Produk
  t.customer_name,
  t.product_id,
  p.product_name,
  t.price AS actual_price,
  t.discount_percentage,
  
  -- 4. Persentase Gross Laba berdasarkan Harga Produk
  CASE 
    WHEN t.price <= 50000 THEN 0.10
    WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
    WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
    WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS persentase_gross_laba,

  -- 5. Perhitungan Nett Sales
  (t.price * (1 - (t.discount_percentage / 100))) AS nett_sales,

  -- 6. Perhitungan Nett Profit
  ((t.price * (1 - (t.discount_percentage / 100))) * 
    CASE 
      WHEN t.price <= 50000 THEN 0.10
      WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
      WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
      WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
      ELSE 0.30
    END) AS nett_profit,
    
  -- 7. Rating Transaksi
  t.rating AS rating_transaksi

FROM 
  `rakamin-kf-analytics-2026.kimia_farma.kf_final_transaction` t
LEFT JOIN 
  `rakamin-kf-analytics-2026.kimia_farma.kf_product` p 
  ON t.product_id = p.product_id
LEFT JOIN 
  `rakamin-kf-analytics-2026.kimia_farma.kf_kantor_cabang` c 
  ON t.branch_id = c.branch_id;
