# 🚗 Automotive Sales Analysis - KarirNex Data Analyst Bootcamp

Repositori ini berisi proyek akhir portofolio saya untuk **Bootcamp Data Analyst KarirNex oleh Ebizmark**. Proyek ini mencakup alur kerja analisis data yang komprehensif (dari awal hingga akhir), meliputi pembersihan data (*data cleansing*), analisis data eksploratif (EDA), penulisan *query* SQL, skrip Python, dan pembuatan *dashboard* interaktif menggunakan Microsoft Power BI.

**Durasi Bootcamp:** 2 - 9 Juli 2026 (12 Jam Pembelajaran + 3 Jam Mini Project)

---

## 📌 Project Overview

Tujuan dari proyek ini adalah untuk menganalisis performa penjualan dari sebuah jaringan *showroom* otomotif yang terdiri dari 10 cabang dengan total 10.000 data transaksi. Analisis ini bertujuan untuk menemukan *insight* utama terkait performa produk, kontribusi cabang, preferensi metode pembayaran pelanggan, dan tren pendapatan secara keseluruhan untuk memberikan rekomendasi bisnis yang nyata bagi manajemen.

## 🛠️ Tools & Technologies Used

* **Microsoft Excel:** Format data awal, pembersihan data, dan analisis menggunakan *PivotTable*.
* **SQL (Google BigQuery):** Pengambilan data tingkat lanjut, *filtering*, agregasi, dan implementasi fungsi CTE (*Common Table Expressions*).
* **Python (Google Colab):** Manipulasi data, pembersihan (menangani nilai kosong & duplikat), dan visualisasi data eksploratif menggunakan `pandas` dan `matplotlib`.
* **Microsoft Power BI:** Pembuatan *dashboard* yang dinamis dan interaktif untuk visualisasi data serta pemantauan KPI.

---

## 📂 Project Phases & Deliverables

### Fase 1: Pembersihan Data Excel & Analisis PivotTable

**Tujuan:** Membersihkan dataset mentah dan mengekstrak *insight* awal menggunakan *PivotTable*.

* **Tugas 1:** Mengidentifikasi `Customer_254` dan `Customer_3155` sebagai pelanggan teratas yang menggunakan metode pembayaran *Trade-In* (masing-masing 5 transaksi).
* **Tugas 2:** Menemukan bahwa cabang **Karawang** adalah cabang yang paling bergantung pada transaksi *Trade-In*, menyumbang 37,76% dari total transaksi cabangnya.
* **Tugas 3:** Merekomendasikan **Honda CR-V 1.5 Turbo RS** sebagai produk prioritas utama untuk dijual di cabang Bandung karena menghasilkan pendapatan tertinggi (Rp31,2 Miliar) dan volume penjualan yang stabil tinggi.

### Fase 2: Query SQL (Google BigQuery)

**Tujuan:** Melakukan pengambilan dan analisis data yang kompleks menggunakan *query* SQL.

* **Analisis Pelanggan:** Memfilter 3.977 nama pelanggan unik (`DISTINCT`).
* **Filter Transaksi:** Mengambil seluruh data dengan metode pembayaran 'Kredit', menghasilkan 4.253 baris transaksi.
* **Insight Produk:** Memfilter model mobil spesifik dengan warna 'Hitam Metalik' (terdapat 16 model unik).
* **Performa Penjualan:**
* Menghitung total transaksi yang dikelompokkan berdasarkan metode pembayaran (Kredit mendominasi dengan 4.253 transaksi).
* Mengidentifikasi bahwa kategori *Hatchback* dan *City Car (EV)* memiliki rata-rata diskon tertinggi.
* Memfilter cabang dengan total pendapatan di atas Rp50 Miliar (Malang memimpin dengan Rp325,3 Miliar).


* **Query Lanjutan (Advanced):**
* Menginvestigasi 318 transaksi di mana diskon yang diberikan melebihi rata-rata diskon keseluruhan.
* Menggunakan CTE untuk menentukan Top 3 model terlaris: Honda HR-V 1.5 E CVT, Toyota Fortuner 2.4 VRZ 4x2 AT, dan Hyundai Creta Prime AT.



### Fase 3: Analisis Data Python (Google Colab)

**Tujuan:** Membersihkan data secara terprogram dan memvisualisasikan pertanyaan bisnis spesifik.

* **Notebook Colab:** [Tautan ke Google Colab](https://colab.research.google.com/drive/1ngxlYr3avS8O1QIGkkBr7bfSr2gF12QN?usp=sharing)
* **Pembersihan Data:**
* Mengisi nilai kosong (*missing values*) pada kolom `trade_in` dengan angka 0.
* Menstandardisasi penulisan kolom `payment_type` menjadi *Title Case* dan menghapus spasi berlebih.
* Mengubah tipe data kolom `sales_date` menjadi format `datetime` yang tepat.


* **Key Findings:**
* **Dominasi Kategori:** Membuat diagram batang yang menunjukkan kategori SUV dan MPV mendominasi pasar secara absolut (>84% dari total transaksi).
* **Cabang Teratas:** Mengidentifikasi Jakarta sebagai cabang dengan volume transaksi tertinggi (1.058 transaksi).
* **Kombinasi Pendapatan Tertinggi:** Memvisualisasikan top 5 kombinasi Cabang-Kategori berdasarkan pendapatan. Kombinasi Cabang Palembang - SUV menempati peringkat pertama dengan pencapaian Rp157,6 Miliar.



### Fase 4: Dashboard Interaktif (Power BI)

**Tujuan:** Membangun *dashboard* visual yang komprehensif untuk pemantauan tingkat eksekutif.

* **Metrik (KPI):** Total Penjualan (Rp3 Triliun), Total Transaksi (10 Ribu), Total Kuantitas (10 Ribu unit), dan *Completion Rate* (89,7%).
* **Visualisasi:**
* Tren Penjualan per Bulan (*Line Chart*) menunjukkan puncak penjualan terjadi pada bulan Agustus.
* Penjualan berdasarkan Kategori (*Bar Chart*) menyoroti dominasi SUV (Rp1,7 Triliun).
* Penjualan berdasarkan Cabang (*Bar Chart*) menunjukkan Malang sebagai pemimpin pendapatan tahunan (Rp0,32 Triliun).
* Top 5 Produk berdasarkan Penjualan (*Bar Chart*) dipimpin oleh Honda CR-V (Rp0,30 Triliun).
* Penjualan berdasarkan Tipe Pembayaran (*Donut Chart*) mengungkapkan ketergantungan sebesar 50,4% pada sistem 'Kredit'.
* Status Transaksi (*Donut Chart*) menunjukkan tingkat keberhasilan penyelesaian transaksi yang sehat di angka 89,66%.



---

## 💡 Key Insights & Rekomendasi Bisnis

1. **Sentralisasi Portofolio Produk:** Bisnis ini sangat bertumpu pada segmen SUV kelas menengah ke atas (seperti CR-V, Fortuner, Pajero). Model-model ini merupakan "tulang punggung" pendapatan perusahaan dan kebal terhadap fluktuasi bulanan. Perusahaan harus memprioritaskan alokasi suplai unit dan ketersediaan stok untuk model-model utama ini.
2. **Sensitivitas Pembiayaan Konsumen:** Dengan lebih dari 50% transaksi menggunakan skema Kredit, daya beli konsumen sangat sensitif terhadap suku bunga dan persetujuan dari pihak *leasing*. Memperkuat kemitraan strategis dengan perusahaan pembiayaan dan meluncurkan promo cicilan/DP rendah (terutama pada bulan-bulan sepi seperti bulan Juni) sangatlah krusial.
3. **Tingkat Pembatalan Transaksi yang Perlu Diwaspadai:** Meskipun tingkat penyelesaian (Completion Rate) di angka ~90%, rasio transaksi yang dibatalkan (Cancelled) dan dikembalikan (Refund) di kisaran 10%. Angka ini berpotensi menyebabkan kerugian finansial dan operasional yang signifikan. Lakukan audit menyeluruh terhadap transaksi Cancelled dan Refund yang mencapai 10%, dan buat strategi spesifik untuk menurunkannya.

---
