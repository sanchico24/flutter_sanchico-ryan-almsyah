import 'bangun_ruang.dart';

class Kubus extends BangunRuang {
  double sisi;

  Kubus({this.sisi = 0});

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
  
}