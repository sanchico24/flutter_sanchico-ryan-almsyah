import 'dart:math';

void main() {
  int hasil = Random().nextInt(100);

  print("Nilai dari $hasil adalah ${nilai(hasil)}");
}

String nilai(int hasil) => hasil > 70 ? 'A' : hasil > 40 ? 'B' : hasil > 0 ? 'C' : 'teks kosong';