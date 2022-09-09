import 'dart:math';

import 'balok.dart';
import 'bangun_ruang.dart';
import 'kubus.dart';

void main() {
  var bangunRuang = BangunRuang();
  print("Volume dari sebuah bangun ruang ${bangunRuang.volume().round()}");

  double sisi = randomNumber();
  bangunRuang = Kubus(sisi: sisi);
  print("Volume dari sebuah bangun ruang kubus dengan sisi ${sisi.round()} cm, yaitu ${bangunRuang.volume().round()} cm³");

  double panjang = 15;
  double lebar = 10;
  double tinggi = 12;
  bangunRuang = Balok();
  bangunRuang.panjang = panjang;
  bangunRuang.lebar = lebar;
  bangunRuang.tinggi = tinggi;
  print('''Volume dari sebuah bangun ruang balok dengan panjang ${panjang.round()} cm,
lebar ${lebar.round()} cm, tinggi ${tinggi.round()} cm, yaitu ${bangunRuang.volume().round()} cm³''');
}
 
double randomNumber() => Random().nextInt(20).toDouble();