import 'dart:io';
void main() {
  const phi = 3.14;
  stdout.write("Masukkan panjang jari-jari lingkaran: ");
  int r = int.parse(stdin.readLineSync());
  double luas = phi * r * r;
  print("Luas lingkaran adalah $luas");
}