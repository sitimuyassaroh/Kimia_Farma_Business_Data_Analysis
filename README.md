# Kimia Farma Operational & Financial Analytics Project

### 📊 Deskripsi Proyek
Proyek ini berisi mengenai analisis operasional perusahaan Kimia Farma berupa data transaksi dan finansial di berbagai kantor cabang Kimia Farma di seluruh Indonesia menggunakan Google Cloud BigQuery. Proyek ini bertujuan untuk menggabungkan data mentah operasional menjadi sebuah tabel analisis kinerja yang siap pakai untuk kebutuhan visualisasi business intelligence.

### 📁 Dataset yang Digunakan
Analisis ini mengintegrasikan 4 file data utama yang berada di dalam dataset `kimia_farma`:
*   `kf_final_transaction`: Data riwayat transaksi penjualan dan rating konsumen.
*   `kf_product`: Data detail produk obat beserta harga dasarnya.
*   `kf_kantor_cabang`: Data informasi lokasi, kategori, dan rating kantor cabang.
*   `kf_inventory`: Data pencatatan stok berkala di gudang farmasi.

### 💻 Luaran Proyek (Outputs)
**Sintaks SQL Utama**: Script lengkap pembuatan tabel analisis utama dapat diakses pada file [`analysis_script_kf.sql`](./analysis_script_kf.sql).

### ⚠️ Catatan Kendala Teknis (Pemeriksaan Akses Akun GCP)
Berdasarkan tinjauan kendala teknis penugasan mengenai peran (*role*) akun GCP:
*   Akun GCP yang disediakan memiliki kebijakan keamanan khusus (*Data Exfiltration Prevention Policy*) dari pihak administrator, sehingga fitur unduh langsung (`Save Results` / `Export`) dinonaktifkan.
*   **Validasi Keberhasilan**: Pembuatan tabel analisis utama (`analysis_table_kf`) telah **100% sukses diproses dan tersimpan di dalam data warehouse BigQuery**. 
*   File CSV hasil analisis yang dilampirkan pada repositori ini merupakan sampel baris data yang diekstrak menggunakan perintah kueri `LIMIT` untuk memenuhi standar dokumentasi penugasan.
