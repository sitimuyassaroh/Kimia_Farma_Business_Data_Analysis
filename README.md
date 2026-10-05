# Kimia Farma Operational & Financial Analytics Project
### 📊 Project Description
This project focuses on analyzing Kimia Farma's operational performance by examining transaction and financial data across various branch offices throughout Indonesia using Google Cloud BigQuery. The primary goal is to transform raw operational data into a unified performance analysis table ready for business intelligence visualization.

### 📁 Datasets Used
This analysis integrates 4 core data files stored within the `kimia_farma` dataset:
*   `kf_final_transaction_compressed`: Sales transaction history and consumer rating data.
*   `kf_inventory_compressed`: Periodic stock inventory levels in pharmaceutical warehouses.
*   `kf_kantor_cabang`: Information on branch locations, categories, and branch ratings.
*   `kf_product`: Product details including medicine names and base prices.

### 💻 Project Outputs
1. **Main SQL Syntax**: The complete script used to generate the primary analysis table can be found in [`analysis_script_kf.sql`](./analysis_script_kf.sql).
2.  **Sample Data Output**: The computed business metrics (Gross Profit, Nett Sales, Nett Profit) are documented in [`hasil_analisis.csv`](./script_analisis.csv).

### ⚠️ Technical Constraint Note (GCP Account Access Review)
In compliance with the assignment's technical guidelines regarding GCP account roles:
*   The provided GCP account operates under strict administrative security controls (*Data Exfiltration Prevention Policy*), which restricts direct file downloads (`Save Results` / `Export`).
*   **Success Validation**: The creation of the core analysis table (`tabel_analisis_kf`) was **100% successful and remains fully saved within the BigQuery data warehouse**.
*   The CSV results attached to this repository consist of a data sample extracted via the `LIMIT` query clause to satisfy the required assignment output guidelines.

