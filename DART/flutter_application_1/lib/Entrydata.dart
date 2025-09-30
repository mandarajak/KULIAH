import 'dart:io';

void main() {
  List<Map<String, String>> mahasiswa = [];

  bool running = true;
  while (running) {
    print("=== Menu ===");
    print("1. Input Data Mahasiswa");
    print("2. Tampilkan Semua Data");
    print("3. Cari Data Mahasiswa");
    print("4. Keluar");

    stdout.write("Pilih menu (1-4): ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        stdout.write("Nama Mahasiswa: ");
        String nama = stdin.readLineSync()!;

        String npm = "";
        while (true) {
          stdout.write("NPM: ");
          npm = stdin.readLineSync()!;
          if (int.tryParse(npm) != null) {
            break;
          } else {
            print("❌ NPM harus berupa angka! Coba lagi.");
          }
        }

        stdout.write("Program Studi: ");
        String prodi = stdin.readLineSync()!;

        mahasiswa.add({
          "Nama": nama,
          "NPM": npm,
          "Prodi": prodi,
        });
        print("✅ Data berhasil ditambahkan!\n");
        break;

      case '2':
        print("\n=== Daftar Mahasiswa ===");
        if (mahasiswa.isEmpty) {
          print("Belum ada data.\n");
        } else {
          for (var mhs in mahasiswa) {
            print("Nama: ${mhs['Nama']}, NPM: ${mhs['NPM']}, Prodi: ${mhs['Prodi']}");
          }
          print("");
        }
        break;

      case '3':
        stdout.write("Masukkan nama mahasiswa yang ingin dicari: ");
        String cari = stdin.readLineSync()!;
        bool ditemukan = false;

        for (var mhs in mahasiswa) {
          if (mhs['Nama']!.toLowerCase() == cari.toLowerCase()) {
            print("\nData ditemukan!");
            print("Nama: ${mhs['Nama']}, NPM: ${mhs['NPM']}, Prodi: ${mhs['Prodi']}\n");
            ditemukan = true;
            break;
          }
        }

        if (!ditemukan) {
          print("\nData tidak ditemukan.\n");
        }
        break;

      case '4':
        print("Terima kasih telah menggunakan program ini!");
        running = false;
        break;

      default:
        print("❌ Pilihan tidak valid, coba lagi.\n");
    }
  }
}