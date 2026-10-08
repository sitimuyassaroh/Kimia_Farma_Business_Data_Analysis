CREATE OR REPLACE TABLE `rakamin-kf-analytics-2026.kimia_farma.analysis_table_kf` AS
SELECT 
  -- Data Transaksi
  t.transaction_id,
  t.date,
  
  -- Data Cabang
  t.branch_id,
  c.branch_name,
  c.kota,
  c.provinsi,
  c.rating AS rating_cabang,
  
  -- Data Pelanggan & Produk
  t.customer_name,
  t.product_id,
  p.product_name,
  t.price AS actual_price,
  t.discount_percentage,
  
  -- Persentase Gross Laba
  CASE 
    WHEN t.price <= 50000 THEN 0.10
    WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
    WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
    WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS persentase_gross_laba,

  -- Nett Sales
  (t.price * (1 - (t.discount_percentage / 100))) AS nett_sales,

  -- Nett Profit
  ((t.price * (1 - (t.discount_percentage / 100))) * 
    CASE 
      WHEN t.price <= 50000 THEN 0.10
      WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
      WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
      WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
      ELSE 0.30
    END) AS nett_profit,
    
  -- Rating Transaksi
  t.rating AS rating_transaksi

FROM 
  `rakamin-kf-analytics-2026.kimia_farma.kf_final_transaction` t
LEFT JOIN 
  `rakamin-kf-analytics-2026.kimia_farma.kf_product` p 
  ON t.product_id = p.product_id
LEFT JOIN 
  `rakamin-kf-analytics-2026.kimia_farma.kf_kantor_cabang` c 
  ON t.branch_id = c.branch_id;
