# ProjekAkhirKomstat_Kelompok5_Statistika23B
# STATIFY

📊 STATIFY adalah aplikasi berbasis R Shiny untuk melakukan analisis statistik nonparametrik, seperti uji Median, Fisher, dan Chi-Square. Aplikasi ini menyediakan fitur visualisasi, laporan otomatis, dan ekspor hasil ke Word.

## 📦 Fitur
- Upload data .csv
- Uji Median (Wilcoxon), Fisher, dan Chi-Square
- Statistik deskriptif
- Visualisasi data interaktif
- Export laporan hasil uji (Word)
- Tampilan dark mode dan animasi intro

## 📁 Struktur Folder

- `app.R` - kode utama aplikasi Shiny
- `www/` - file media (logo, bg, audio)
- `data/` - contoh data yang di butuhkan
- `laporan/` - hasil uji contoh
- `README.md` - dokumentasi proyek

## 👥 Anggota Kelompok
| Nama        | NIM        | Peran                          |
|-------------|------------|--------------------------------|
| Faiz Farhan | 1314623072 | Ketua, struktur UI & UI Dasar (Header, Sidebar, Background, Tabs) |
| Faiz Hakim  | 1314623052 | Isi Tab UI (Beranda, Info, Upload, Visual, Hasil)         |
| Yoseph Felix| 1314623068 | Server: Contoh Data, Upload Input, Visualisasi    |
| Derry Azhar | 1314623070 | Server: Perhitungan Uji Statistik dan Output Keputusan |
| Alip Pabian | 1314623051 | Download Word (Export Laporan) |

# Jalankan di RStudio
shiny::runApp()
