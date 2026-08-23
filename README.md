# 🎬 Cinema Ticket Customer Segmentation & Retention Analysis

Analisis segmentasi pelanggan dan retensi berdasarkan data transaksi tiket bioskop, menggunakan **SQL (BigQuery)** untuk eksplorasi data, **Python (K-Means Clustering)** untuk segmentasi pelanggan, dan **Looker Studio** untuk dashboard interaktif.

> **Pertanyaan utama:** Apakah pelanggan yang membayar lebih mahal otomatis lebih loyal?
> Jawabannya: **tidak.** Segmen dengan harga tiket termurah justru punya tingkat retensi tertinggi (53.4%).

🔗 **[Lihat Dashboard Interaktif](https://datastudio.google.com/reporting/c547962a-b474-4d5b-ba65-307030b39e52)**
🔗 **[Deck Presentasi](https://docs.google.com/presentation/d/1lgtQAyTr9BnmDFnuBG1SvChK4LSPPxGP/edit?usp=sharing&ouid=102717793803392782423&rtpof=true&sd=true)**

---

## 📌 Daftar Isi

- [Latar Belakang](#-latar-belakang)
- [Dataset](#-dataset)
- [Metodologi](#-metodologi)
- [Temuan Utama](#-temuan-utama)
- [Struktur Repository](#-struktur-repository)
- [Tools & Teknologi](#-tools--teknologi)
- [Cara Menjalankan Ulang](#-cara-menjalankan-ulang)
- [Kontak](#-kontak)

---

## 🎯 Latar Belakang

Proyek ini adalah simulasi analisis end-to-end untuk industri ticketing & event, mulai dari data transaksi mentah, hingga segmentasi pelanggan berbasis machine learning dan dashboard siap pakai untuk mendukung pengambilan keputusan bisnis (strategi promo, program loyalitas, dan alokasi sumber daya).

## 📊 Dataset

- **Sumber:** [Cinema Hall Ticket Sales and Customer Behavior](https://www.kaggle.com/datasets/himelsarder/cinema-hall-ticket-sales-and-customer-behavior) (Kaggle)
- **Ukuran:** 1.440 baris, 7 kolom
- **Kolom:** `Ticket_ID`, `Age`, `Ticket_Price`, `Movie_Genre`, `Seat_Type`, `Number_of_Person`, `Purchase_Again`

## 🔬 Metodologi

1. **Data Cleaning**, memisahkan kolom `Number_of_Person` (campuran teks/angka) menjadi `group_size` dan `attendance_type`; menangani `Ticket_ID` yang bertabrakan tanpa menghapus data.
2. **Exploratory Data Analysis (SQL)**, query di Google BigQuery untuk melihat revenue & retention rate per genre, tipe kursi, dan kelompok umur.
3. **Customer Segmentation (Python)**, feature engineering, standardisasi, penentuan jumlah cluster optimal (elbow method & silhouette score), dan K-Means clustering (k=4).
4. **Dashboard**, visualisasi interaktif di Looker Studio untuk komunikasi insight ke stakeholder non-teknis.

## 💡 Temuan Utama

| Segmen Pelanggan | Karakteristik | Retention Rate |
|---|---|---|
| Keluarga/Rombongan VIP | Usia menengah, kursi Premium/VIP, datang beramai-ramai | 47.5% |
| Penggemar Aksi Dewasa | Usia lebih tua, kursi VIP, genre Action, sendiri | 49.7% |
| Anak Muda Penggemar Sci-Fi | Usia muda, kursi Premium, genre Sci-Fi, sendiri | 46.9% |
| **Pelanggan Hemat yang Setia** | Kursi termurah (Standard), sendiri | **53.4%** ⭐ |

**Insight bisnis:** Retensi pelanggan tidak berkorelasi linear dengan harga atau kemewahan kursi. Segmen VIP bernilai tinggi secara revenue namun retensinya rata-rata, sehingga berpotensi menjadi target program loyalitas khusus, sementara segmen dengan harga termurah justru menjadi fondasi retensi paling stabil.

## 📁 Struktur Repository

```
├── sql/
│   ├── AgeGroup_Revenue_Retention.sql
│   ├── AloneGroup_Revenue_Retention.sql
│   ├── Genre_Revenue_Retention.sql
│   └── SeatType_Revenue_Retention.sql
├── python/
│   └── cinema_ticket_sales_clustering.ipynb
├── presentation/
│   └── Cinema_Ticket_Analysis_Presentation.pptx
└── README.md
```

## 🛠️ Tools & Teknologi

- **SQL** — Google BigQuery (Standard SQL)
- **Python** — pandas, scikit-learn (K-Means, StandardScaler, silhouette_score)
- **Visualisasi** — Looker Studio, matplotlib
- **Environment** — Google Colab

## ▶️ Cara Menjalankan Ulang

1. **SQL:** Upload dataset ke BigQuery (buat dataset baru → Create Table → Upload CSV → Auto Detect Schema), lalu jalankan query di folder `sql/` secara berurutan. Ganti `cinema-ticket-506008.ticket.ticket` dengan path project BigQuery kamu sendiri.
2. **Python:** Buka `cinema_ticket_sales_clustering.ipynb` di [Google Colab](https://colab.research.google.com), jalankan tiap sel secara berurutan. Upload file dataset saat diminta di langkah awal.
3. **Dashboard:** Hasil akhir (`cinema_ticket_clustered_final.csv`) dapat diunggah ke Google Sheets, lalu dihubungkan ke Looker Studio untuk membangun ulang dashboard.

## 📬 Kontak

**Rizno Fadhil**
Statistics & Data Science Graduate

- 📧 riznofadhil2@gmail.com
- 💼 [linkedin.com/in/rizno-fadhil](https://linkedin.com/in/rizno-fadhil)
- 🌐 [Portofolio Lengkap](https://bit.ly/RiznoFadhilPortfolio)
