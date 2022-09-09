import 'matematika.dart';

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil({this.x = 24, this.y = 36});

  @override
  String hasil() => "KPK dari $x dan $y adalah ${kpk(x, y)}";
}

int kpk(int bil1, int bil2) {
  var temp = 0;
  if (bil1 != 0 && bil2 != 0) {
    if (bil1 > bil2) {
      temp = bil1;
      bil1 = bil2;
      bil2 = temp;
    }

    do {
      temp += bil2;
    } while (temp % bil1 != 0);

  } else {
    temp = bil1 != 0 ? bil1 : bil2 != 0 ? bil2 : 0;
  }

  return temp;
}
