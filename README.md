# Tugas Praktik Basis Data (Pertemuan ke-4)

File ini berisi panduan mengenai skrip SQL untuk tugas dan kuis praktikum basis data berupa prosedur (*Stored Procedure*) MySQL.

## Daftar File

### 1. `indeks.sql`
File ini berisi *draft* dan skrip logika akademik, dan ditambahkan satu prosedur baru untuk Latihan 1:
- `cek_status_stok(p_stok)`: Menampilkan status barang dengan kategori: Habis (0), Hampir Habis (1-5), Tersedia (6-20), dan Stok Aman (>20).

### 2. `kuis_coding.sql`
File ini berisi kode jawaban khusus untuk Kuis Coding Pertemuan 4:
- `cek_predikat_mahasiswa(p_nilai)`: Menentukan dan menampilkan Tabel Output berisi "Nilai", "Predikat" (Sangat Memuaskan, Memuaskan, Baik, Cukup, Kurang), dan "Status Kelulusan" (Lulus / Tidak Lulus) secara otomatis dari input 0-100.

---

## 🛠 Panduan Eksekusi (Testing) di phpMyAdmin XAMPP

Berikut adalah saran terbaik untuk menguji prosedur di atas sehingga hasilnya dijamin sukses.

### Cara 1: Menggunakan Tab SQL (Paling Direkomendasikan 🔥)
Cara ini menjamin pemanggilan fungsi bersifat statis dan akurat tanpa gangguan sistem parameter PhpMyAdmin.
1. Pastikan Anda sudah membuat *Procedure*-nya terlebih dahulu.
2. Buka tab **SQL** (letaknya di bagian atas halaman phpMyAdmin).
3. Ketik perintah panggilan secara lengkap, contoh:
   ```sql
   CALL cek_status_stok(3);
   ```
   Atau untuk kuis coding:
   ```sql
   CALL cek_predikat_mahasiswa(85);
   ```
4. Klik tombol **Go** di pojok kanan bawah. Output tabel akan langsung muncul di halaman selanjutnya.

### Cara 2: Menggunakan Tombol Menu "Execute"
1. Klik dan masuk ke tab **Routines**.
2. Anda akan menemukan prosedur `cek_status_stok` atau `cek_predikat_mahasiswa`. Klik teks **Execute**.
3. Di layar *popup* yang muncul, Anda akan diminta memasukkan *Value* parameter.
4. ⚠️ **HANYA KETIK ANGKA-NYA SAJA** (misal ketik `85` atau `3`). 
5. *(Dilarang mengetik ulang teks "CALL" pada input kotak tersebut, karena karakter huruf akan dibaca sebagai angka `0` oleh MySQL!)*
6. Terakhir, klik **Go**.

Semangat belajar Basis Data!
