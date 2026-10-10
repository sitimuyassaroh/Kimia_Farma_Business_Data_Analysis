# Performance Analytics Project - Kimia Farma Business Year 2020-2023
### 📊 Project Description
This project analyzes and evaluates Kimia Farma’s business performance from 2020 to 2023 using Google BigQuery and Looker Studio. The available data consists of four dataset tables: `kf_final_transaction_compressed`, `kf_product`, `kf_kantor_cabang`, and `kf_inventory_compressed`. The first three tables were combined using a LEFT JOIN to form a single analysis table containing net sales and net profit. From this table, the following metrics were analyzed: total sales and profit; the number of transactions and customers; the contribution of each province and branch category; annual profit trends; branch ratings compared to transaction ratings; product composition; and the impact of discounts. The results are visualized in a Looker Studio (Data Studio) dashboard consisting of three pages to identify the branches and regions that drive revenue, as well as opportunities for improving Kimia Farma’s performance in the future.

### 📁 Datasets Used
This analysis integrates 4 core data files stored within the `kimia_farma` dataset:
*   `kf_final_transaction_compressed`: Sales transaction history and consumer rating data.
*   `kf_product`: Product details including medicine names and base prices.
*   `kf_kantor_cabang`: Information on branch locations, categories, and branch ratings.
*   `kf_inventory_compressed`: Periodic stock inventory levels in pharmaceutical warehouses.

### 💻 Project Outputs
1. **Main SQL Syntax**: The complete script used to generate the primary analysis table can be found in [`analysis_script_kf.sql`](./analysis_script_kf.sql).
2.  **Data Visualization Dashboard**: is divided into three pages: Data Snapshot, Key Parameters, and Additional Parameters. The visualization results are based on the `analysis_script_kf.sql` table processed in Looker Studio (Data Studio).
   Click [here](https://drive.google.com/file/d/1o_a-X9EhvqyrYCIUCOlmhHn047JjY_NC/view?usp=drivesdk) to view the full dashboard!

### ⚠️ Technical Constraint Note (GCP Account Access Review)
In compliance with the assignment's technical guidelines regarding GCP account roles:
*   The provided GCP account operates under strict administrative security controls (*Data Exfiltration Prevention Policy*), which restricts direct file downloads (`Save Results` / `Export`).
*   **Success Validation**: The creation of the core analysis table (`tabel_analisis_kf`) was **100% successful and remains fully saved within the BigQuery data warehouse**.
*   The CSV results attached to this repository consist of a data sample extracted via the `LIMIT` query clause to satisfy the required assignment output guidelines.

