import 'dart:math';

import 'hewan.dart';
import 'mobil.dart';

void main() {
  var mobil = Mobil();
  var random = Random();
  var listDouble = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0];

  for (var i = 1; i <= _randomRange(3, 10); i++) {
    var berat = random.nextInt(100).toDouble() +
        listDouble[random.nextInt(listDouble.length)];
    var hewan = Hewan(nama: "Hewan$i", berat: berat);
    mobil.tambahMuatan(hewan);
  }

  print("\nTotal Hewan yang bisa masuk mobil adalah ${mobil.muatan.length} hewan.");
}

int _randomRange(int min, int max) => min + Random().nextInt(max - min);
