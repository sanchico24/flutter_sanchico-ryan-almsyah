import 'dart:math';

void main() {
  var random = Random();
  int r = random.nextInt(100);

  print('Luas Lingkaran dari jari-jari $r cm adalah ${luasLingkaran(r)} cm².');
}

int kuadrat(int x) => x * x;

double luasLingkaran(int jari) {
  bool isMod7 = (jari % 7 == 0) ? true : false;
  return isMod7 ? (22 * kuadrat(jari) / 7) : (3.14 * kuadrat(jari));
}