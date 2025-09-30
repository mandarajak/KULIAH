import 'dart:io';

void main() {
  List<Map<String, String>> mahasiswa = [];

  stdout.write("Masukkan jumlah data mahasiswa: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    print("\nData ke-${i + 1}");

    stdout.write("Nama Mahasiswa: ");
    String nama = stdin.readLineSync()!;

    stdout.write("NPM: ");
    String npm = stdin.readLineSync()!;

    stdout.write("Program Studi: ");
    String prodi = stdin.readLineSync()!;

    mahasiswa.add({
      "Nama": nama,
      "NPM": npm,
      "Prodi": prodi,
    });
  }

  print("\n=== Daftar Mahasiswa ===");
  for (var mhs in mahasiswa) {
    print("Nama: ${mhs['Nama']}, NPM: ${mhs['NPM']}, Prodi: ${mhs['Prodi']}");
  }

  stdout.write("\nMasukkan nama mahasiswa yang ingin dicari: ");
  String cari = stdin.readLineSync()!;
  bool ditemukan = false;

  for (var mhs in mahasiswa) {
    if (mhs['Nama']!.toLowerCase() == cari.toLowerCase()) {
      print("\nData ditemukan!");
      print("Nama: ${mhs['Nama']}, NPM: ${mhs['NPM']}, Prodi: ${mhs['Prodi']}");
      ditemukan = true;
      break;
    }
  }

  if (!ditemukan) {
    print("\nData tidak ditemukan.");
  }
}