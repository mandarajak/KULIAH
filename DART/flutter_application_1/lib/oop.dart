class Mahasiswa {
  String? nama;
  int? npm; 
  String? prodi;
  int? angkatan;

  void infoDisplay(String nama, int npm, String prodi, int angkatan) {
    print("Nama     : $nama");
    print("NPM      : $npm");
    print("Prodi    : $prodi");
    print("Angkatan : $angkatan");
  }
}

void main() {
  Mahasiswa mhs1 = Mahasiswa();
  mhs1.infoDisplay("Manda Rajak", 7352311154, "Informatika", 2023);
}
