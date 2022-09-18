import 'hewan.dart';

class Mobil {
  List<Hewan> muatan = [];
  double _maxCapacity = 150.0;
  double _weight = 100.0;
  var _totalHewanCapacity = 0.0;

  void tambahMuatan(Hewan hewan) {
    _totalHewanCapacity += hewan.berat ?? 0.0;

    if (_totalHewanCapacity <= _maxCapacity) {
      muatan.add(hewan);
      print("${hewan.nama} (${hewan.berat} Kg) berhasil ditambah");
    } else {
      _totalHewanCapacity -= hewan.berat ?? 0.0;
      print(
          "Max capacity is ${_maxCapacity.round()} Kg, cant add ${hewan.nama} (${hewan.berat} Kg)");
    }
  }

  void totalMuatan() {
    var total = 0.0;
    for (var item in muatan) {
      _weight += (item.berat ?? 0.0);
      total += item.berat ?? 0;
      print("${item.nama} -> ${item.berat} Kg");
    }
    print("Total kapasitas : $total Kg dan berat mobil menjadi $_weight Kg");
  }
}
