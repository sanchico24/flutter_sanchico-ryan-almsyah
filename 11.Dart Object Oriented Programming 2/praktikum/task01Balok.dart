import 'bangun_ruang.dart';

class Balok extends BangunRuang {

  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}