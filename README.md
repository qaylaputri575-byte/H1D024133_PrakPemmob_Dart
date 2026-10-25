Nama : Qayla Zahra Era Putri
NIM  : H1D024133

- Queue (Antrian) dengan Dart -

Implementasi struktur data Queue sederhana menggunakan bahasa Dart. Queue bekerja dengan prinsip FIFO (First In, First Out): elemen yang pertama masuk akan menjadi yang pertama keluar, seperti antrian di kasir.

Fitur
Method	Deskripsi
enqueue(int nilai)	Menambahkan elemen ke bagian belakang antrian
pop()	Mengeluarkan elemen dari bagian depan antrian dan mengembalikan nilainya (null jika antrian kosong)
tampilkanAntrian()	Menampilkan seluruh isi antrian saat ini
Cara Kerja

Antrian disimpan dalam sebuah List<int> bernama elemen.

Enqueue: elemen baru ditambahkan di akhir list dengan add().
Pop: elemen paling depan (indeks 0) dihapus dengan removeAt(0). Jika antrian kosong, program menampilkan pesan Antrian kosong! dan mengembalikan null.
enqueue(10) -> [10]
enqueue(20) -> [10, 20]
enqueue(30) -> [10, 20, 30]
pop()       -> [20, 30]     (10 keluar lebih dulu)
Cara Menjalankan

Program ini bisa dijalankan langsung di browser lewat DartPad, tanpa perlu install Dart SDK.

Buka dartpad.dev.
Hapus kode bawaan di editor.
Salin seluruh isi queue.dart ke editor.
Klik tombol Run.
Hasilnya muncul di panel Console di bagian bawah.

Kalau mau menjalankan secara lokal, install Dart SDK lalu jalankan dart run queue.dart di terminal.

Output:
10 berhasil ditambahkan ke antrian
20 berhasil ditambahkan ke antrian
30 berhasil ditambahkan ke antrian
Isi antrian: [10, 20, 30]
10 dihapus dari antrian
Isi antrian: [20, 30]

Contoh Penggunaan:
dart
void main() {
  Queue antrianKu = Queue();

  antrianKu.enqueue(10);
  antrianKu.enqueue(20);
  antrianKu.enqueue(30);

  antrianKu.tampilkanAntrian();

  antrianKu.pop();

  antrianKu.tampilkanAntrian();
}
Catatan:
pop() pada program ini berperilaku seperti dequeue (mengeluarkan elemen terdepan), bukan seperti pop pada stack.
Operasi removeAt(0) memiliki kompleksitas O(n) karena elemen lain harus digeser. Untuk data berukuran besar, pertimbangkan menggunakan Queue dari dart:collection (ListQueue) yang lebih efisien.
Pengembangan Selanjutnya
 Menambahkan method peek() untuk melihat elemen terdepan tanpa menghapusnya
 Menambahkan method isEmpty dan size
 Mengubah ke tipe generik Queue<T>
 Menambahkan unit test
