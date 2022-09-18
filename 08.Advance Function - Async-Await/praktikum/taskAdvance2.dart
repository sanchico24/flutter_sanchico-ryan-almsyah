void main() {
  var maps = {};
  var list = [
    ["Nama", "Chico"],
    ["Asal", "Sukabumi"],
    ["No.Telp", "0821234567"]
  ];

  for (var item in list) {
    maps[item[0]] = item[1];
  }

  print('''
  Terdapat sebuah list sebagai berikut : 
    $list
  Dan berikut dirubah dalam bentuk map :
    $maps''');

  for (var item in maps.keys) {
    print(maps[item]);
  }  
}
