import 'dart:io';

void main() {
  String judul = "=== Program Kategori Umur ==="; 
  print(judul);

  stdout.write("Masukkan umur: ");
  int? umur = int.tryParse(stdin.readLineSync()!);

  if (umur == null || umur < 0) {
    print("Input tidak valid. Harap masukkan angka positif.");
    return;
  }

  String kategori;
  if (umur >= 0 && umur <= 12) {
    kategori = "Anak-anak";
  } else if (umur >= 13 && umur <= 17) {
    kategori = "Remaja";
  } else if (umur >= 18 && umur <= 59) {
    kategori = "Dewasa";
  } else {
    kategori = "Lansia";
  }

  String hasil = "Anda termasuk kategori $kategori"; 
  print(hasil);
}
