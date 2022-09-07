class Hewan {
  String? nama;
  double? berat;

  Hewan({this.nama, this.berat}) {
    nama = nama ?? "";
    berat = berat ?? 0;
  }
}
