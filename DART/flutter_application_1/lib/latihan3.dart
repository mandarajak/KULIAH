import 'dart:io';
void main(){
  stdout.write("Masukkan panjang:");
  double panjang = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan lebar:");
  double lebar = double.parse(stdin.readLineSync()!);

  double luas = panjang * lebar;
  double keliling = 2 * (panjang + lebar);

  print("panjang = $panjang"); 
  print("lebar = $lebar"); 
  print("luas = $luas"); 
  print("keliling  = $keliling"); 
  }