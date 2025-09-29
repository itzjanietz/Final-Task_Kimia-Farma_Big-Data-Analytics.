-- Create Analysis Table for Kimia Farma (2020-2023)
CREATE OR REPLACE TABLE `rakamin-kf-analytics-471716.kimia_farma.kf_analysis_table` AS
SELECT
  -- Transaction info
  ft.transaction_id,
  ft.date,
  ft.branch_id,
  ft.customer_name,
  ft.rating AS rating_transaksi,
  
  -- Branch info
  kc.branch_name,
  kc.kota,
  kc.provinsi,
  kc.rating AS rating_cabang,
  
  -- Product info
  p.product_id,
  p.product_name,
  p.price AS actual_price,
  
  -- Discount & sales
  ft.discount_percentage,
  p.price * (1 - ft.discount_percentage/100.0) AS nett_sales,
  
  -- Profit calculation
  CASE
    WHEN p.price <= 50000 THEN 0.10
    WHEN p.price <= 100000 THEN 0.15
    WHEN p.price <= 300000 THEN 0.20
    WHEN p.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS gross_profit_percentage,
  
  (p.price * (1 - ft.discount_percentage/100.0)) *
  CASE
    WHEN p.price <= 50000 THEN 0.10
    WHEN p.price <= 100000 THEN 0.15
    WHEN p.price <= 300000 THEN 0.20
    WHEN p.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS nett_profit

-- Combine transaction data with branch and product information for analysis
FROM `rakamin-kf-analytics-471716.kimia_farma.kf_final_transaction` ft
LEFT JOIN `rakamin-kf-analytics-471716.kimia_farma.kf_kantor_cabang` kc 
  ON ft.branch_id = kc.branch_id
LEFT JOIN `rakamin-kf-analytics-471716.kimia_farma.kf_product` p 
  ON ft.product_id = p.product_id;