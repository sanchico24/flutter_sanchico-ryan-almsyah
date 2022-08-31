import 'dart:math';

void main() async {
  var list = getListNumber();
  var pengali = randomRange(5, 10);
  var hasil = await listHasilPengali(list, pengali);

  print('''Terdapat sebuah list yaitu $list, 
  jika list tersebut isinya dikalikan dengan $pengali, 
  maka menghasilkan $hasil''');
}

int randomRange(int min, int max) => min + Random().nextInt(max - min);

List<int> getListNumber() {
  List<int> nums = [];
  for (var i = 1; i <= randomRange(3, 10); i++) {
    int num = Random().nextInt(100);
    nums.add(num);
  }
  return nums;
}

Future<List<int>> listHasilPengali(List<int> list, int pengali) {
  List<int> hasil = [];

  list.forEach((item) {
    hasil.add(item * pengali);
  });

  return Future.delayed(Duration(seconds: 3), () {
    return hasil;
  });
}

// List<int> altListHasilPengali(List<int> list, int pengali) {
//   List<int> hasil = [];
//   Future.forEach<int>(list, (item) => hasil.add(item * pengali));
//   return hasil;
// }
