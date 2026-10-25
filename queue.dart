class Queue {
  List<int> elemen = [];

  void enqueue(int nilai) {
    elemen.add(nilai);
    print("$nilai berhasil ditambahkan ke antrian");
  }

  int? pop() {
    if (elemen.isEmpty) {
      print("Antrian kosong!");
      return null;
    }
    int dikeluarkan = elemen.removeAt(0);
    print("$dikeluarkan dihapus dari antrian");
    return dikeluarkan;
  }

  void tampilkanAntrian() {
    print("Isi antrian: $elemen");
  }
}

void main() {
  Queue antrianKu = Queue();

  antrianKu.enqueue(10);
  antrianKu.enqueue(20);
  antrianKu.enqueue(30);

  antrianKu.tampilkanAntrian();

  antrianKu.pop();

  antrianKu.tampilkanAntrian();
}
