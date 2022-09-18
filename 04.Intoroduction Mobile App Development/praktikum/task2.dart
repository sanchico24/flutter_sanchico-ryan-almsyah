void main() {
  String kata1 = 'Hey';
  String kata2 = 'Selamat';
  String kata3 = 'Datang';

  // Bila disambung dengan spasi
  String hasil1 = sambung(kata1, kata2, kata3, true);

  // Bila disambung dengan tanpa spasi
  String hasil2 = sambung(kata1, kata2, kata3, false);

  String hasil =
      '''Hasil sambung kata dari variabel string $kata1, $kata2, $kata3 adalah :
  -> jika dipisah dengan spasi menjadi $hasil1
  -> jika tidak dengan spasi menjadi $hasil2''';
  print(hasil);
}

String sambung(String kata1, String kata2, String kata3, bool isWithSpace) =>
    isWithSpace ? "$kata1 $kata2 $kata3" : "$kata1$kata2$kata3";
