# prologue

Repo untuk tugas flutter PBP

## Tugas 7

### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    
Perbedaan utama _stateless_ dan _stateful widget_ terletak pada sifat mereka terhadap perubahan. 

_stateless widget_ bersifat statis. Tidak ada keadaan yang dapat merubah kondisi dari widget setelah dibuat. Apabila kita ingin merubah _stateless widget_ kita harus membuat ulang _widget_ tersebut.

_stateful widget_ bersifat dinamis. _Widget_ dapat diubah sesuai dengan interaksi dari user.

### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

1. *MyHomePage*
Widget untuk menampilkan daftar ShopCard dalam bentuk grid.

2. *Scaffold*
Scaffold adalah kerangka kerja dasar untuk halaman aplikasi. Ini menyediakan fitur-fitur seperti AppBar dan tata letak dasar.

3. *AppBar*
AppBar bertugas menampilkan judul aplikasi yaitu "Prologue Book Inventory".

4. *SingleChildScrollView*
Digunakan di dalam body dari Scaffold untuk _scrool_ konten yang berada di dalamnya jika perlu.

5. *Padding* 
Padding adalah widget yang digunakan untuk memberikan jarak (padding) di sekitar konten

6. *Column*
Column digunakan untuk mengatur widget anaknya secara vertikal.

7. *ShopCard*
ShopCard adalah widget kustom yang digunakan untuk menampilkan setiap item belanja sebagai sebuah kartu dengan ikon dan teks.

8. *Material* 
Material digunakan untuk memberikan efek material design pada kartu dengan memberikan latar belakang warna 

9. *InkWell*
InkWell digunakan untuk membuat area yang responsif terhadap sentuhan.

10. *Icon*
Icon digunakan untuk menampilkan ikon pada kartu berdasarkan properti icon dari ShopItem.

11. *Text*
Text digunakan untuk menampilkan teks pada kartu berdasarkan properti name dari ShopItem.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

1. Pertama-tama kita menginisiasi proyek flutter dengan nama _prologue_
2. Kemudian kita mengubah file main.dart dan menambahkan file menu.dart sesuai dengan langkah tutorial 7 flutter
3. Untuk membuat tombol kita berwarna kita akan menambahkan field tambahan di class ShopItem. Kita akan menambahkan field cardColor. Setelah itu kita menambahkan argumen tambahan di constructor dan di bagian dimana constructor kelas dipanggil.
4. Selanjutnya kita menambahkan field cardColor di class ShopCard serta menambahkan argumen tambahan di constructor ShopCard
5. Selanjutnya kita mengubah warna widget yang dibuat ShopCard sesuai dengan warna field cardColor ShopCard


