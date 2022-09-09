import 'matematika.dart';

class FaktorPersekutuanTerbesar implements Matematika {
  int x;
  int y;

  FaktorPersekutuanTerbesar({this.x = 24, this.y = 36});
  @override
  String hasil() => "FPB dari $x dan $y adalah ${fpb(x, y)}";

  int fpb(int bil1, int bil2) {
    var temp;

    if (bil1 != 0 && bil2 != 0) {
      if (bil1 < bil2) {
        temp = bil1;
        bil1 = bil2;
        bil2 = temp;
      }

      do {
        if (bil1 % bil2 == 0) {
          return bil2;
        }
        temp = bil1 % bil2;
        bil1 = bil2;
        bil2 = temp;
      } while (bil2 != 0);

    } else {
      temp = bil1 != 0 ? bil1 : bil2 != 0 ? bil2 : 0;
    }

    return temp;
  }
}
