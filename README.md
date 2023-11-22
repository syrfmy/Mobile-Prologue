# prologue

Repo untuk tugas flutter PBP

## Daftar Isi
1. [Tugas 7](#tugas-7)
2. [Tugas 8](#tugas-8)
3. [Tugas 9](#tugas-9)

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


## Tugas 8

### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Flutter menyimpan halaman yang di datangi user dalam sebuah struktur data seperti Stack. Dimana Halaman yang ditampilkan adalah halaman yang berada di atas Stack.
 
Navigator.push() akan memasukkan halaman baru ke atas Stack, Halaman baru tersebut kemudian akan ditampilkan karena sekarang halaman tersebut adalah Halaman paling atas di stack.

Navigator.pushReplacement() akan menghapus halaman paling atas di Stack kemudian memasukkan halaman baru tersebut ke Stack. Halaman baru tersebut kemudian akan ditampilkan.

Navigator.push() digunakan ketika kita ingin menyimpan _history_ halaman yang ditampilkan seperti saat sedang mencari video di sebuah halaman yang menampilkan List Video. Apabila kita sudah melihat sebuat video, maka kita ingin agar user kembali ke List Video yang ditampilkan sebelumnya.

Navigator.pushReplacement() digunakan apabila kita ingin agar pengguna tidak diperbolehkan untuk kembali ke halaman sebelumnya. Seperti saat pengguna login ke suatu halaman.

###  Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

*1. Container* 
Container adalah widget serbaguna yang dapat berisi widget lain dan menyediakan properti styling seperti padding, margin, dan dekorasi.
Container digunakan untuk membungkus widget lain dan menyediakan properti styling serta layout.

*2. Row*
Row adalah widget yang kita gunakan untuk mengatur layout widget lain secara vertikal. 

*3. Column*
Column adalah widget yang kita gunakan untuk mengatur layout widget lain secara horizontal.

*4. Align*
Align adalah widget yang berfungsi mengatur posisi suatu widget di dalam parent widget. 

*5. GridView*
GridView adalah widget yang akan berfungsi menampilkan widget-widget di dalamnya ke dalam sebuah grid. GridView ini kita gunakan ketika kita ingin mengatur layout banyak widget.

Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

###  Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

*1. Text Field*
Text field digunakan untuk menerima masukan dari user dalam konteks aplikasi ini judul, penulis, dan deskripsi buku

*2 ElevatedButton dan TextButton*
ElevatedButton dan TextButton digunakan untuk konteks yang sama yaitu menerima konfirmasi dari user sebelum melakukan tindakan tertentu. Seperti mengirim form atau kembali ke halaman selanjutnya.

### Bagaimana penerapan clean architecture pada aplikasi Flutter?

Clean architecture sendiri adalah pendekaatan software engginering yang memisahkan aplikasi menjadi lapisan-lapisan independen dengan tanggung jawab tertentu. Di dalam konteks aplikasi ini Feature layer atau widget yang akan kita tampilkan kita gabung ke folder bernama screen. Sedangkan widget yang berhubungan dengan data seperti data buku kita gabung ke folder widget

###  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!

*1. Membuat halaman form untuk menambah item*

Saya akan menambah halaman form di file bernama shoplist_form.dart dengan 3 text field yaitu judul buku, nama penulis, dan deskripsi buku. TextField akan melakukan validasi input. Selanjutnya kita akan menambahkan popup yang akan muncul ketika kita menekan tombol save. Selain itu ketika tombol save ditekan, kita akan membuat instance class Book berdasarkan input data dari pengguna dan menyimpan instance kelas Book tersebut ke List bernama books di file book.dart. 

*2. Membuat LeftDrawer untuk routing pengguna*

Untuk membuat leftDrawer saya akan membuat left_drawer.dart yang merupakan komponen widget LeftDrawer kita. Setelah itu kita akan menambahkan widget LeftDrawer tersebut ke MyHomePage kita serta membuat sebuah tombol di AppBar menu kita yang berfungsi menampilkan dan menyembunyikan widget LeftDrawer kita. LeftDrawer kita akan berisi tombol untuk mengakses Form penambahan produk dan Halaman yang menampilkan semua buku.

*3. Melakukan Routing untuk tombol di homepage dan di LeftDrawer*

Menggunakan Navigator kita akan push dan pop tergantung tombol kita.
Tombol Tambah Produk di LeftDrawer dan di MyHomePage akan melakukan push ke halaman ShopProductForm. Selanjutnya tombol Lihat Produk di LeftDrawer dan di MyHomePage akan melakukan push ke halaman BookList. 

## Tugas 8

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa, namun kekurangannya kita tidak tahu tipe data yang kita peroleh nantinya

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest merujuk pada informasi yang dibawah oleh konteks user, oleh karena itu setiap halaman memerlukan cookie request untuk memperoleh informasi mengenai user

###  Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Flutter akan mengirimkan http request, responsenya yang dalam JSON kemudian akan di konversi menggunakan model yang telah didefinisikan. Hasil dari konversinya kemudian di tampilkan di UI Flutter

###  Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Flutter akan mengirimkan http request dengan body berisi username dan password, kemudian di backend django akan melakukan validasi dan memberikan response yang sesuai apabila kombinasi dan password benar. Jika benar halaman akan berpindah ke halaman menu, jika salah akan tetap di halaman login

### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

Untuk widget yang baru saya gunakan di tugas ini adalah

1. CookieRequest yang bertugas menyimpan informasi pengguna
2. Switch yang mana merupakan tombol toggle buku milik pengguna atau semua buku
3. UserProvider menyimpan informasi mengenai pengguna

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

1. Saya coba melakukan deploy (gagal)
2. Membuat model untuk buku
3. Memodifikasi halaman book_list untuk menampilkan semua buku
4. Menambahkan fungsionalitas register di halaman login dan membuat halaman register
5. Menambahkan fungsi register di backend django
6. Memodifikasi endpoin get-product untuk memfilter buku milik pengguna dan menampilkannya di halaman book_list