# 06. Basic Dart Programming (Branching)

```
Name    : Sanchico Ryan Almsyah 
Section : 06. Basic Dart Programming (Branching)
Date    : Day 5
```

## Summary
Dalam materi ini, mempelajari tentang Introduction to Algorithm and Dart Programming, dan berikut beberapa ringkasan dari materi yang telah dipelajari.
- Dart merupakan bahasa pemrograman yang dirancang untuk membuat aplikasi agar dapat berjalan dengan cepat.
- Kenapa harus Dart?
    - Type safe -> konsistensi tipe data
    - Null safety -> keamanan data dari null
    - Rich standard library -> banyak dukungan library internal
    - Multiplatform -> berjalan dibeberapa platform
- Fungsi Main merupakan bagian yang dijalankan saat pertama kali. Dapat berupa void atau int.
- Variabel digunakan untuk menyimpan data yang memiliki nama dan tipe data.
- Konstanta sama seperti variabel namun nilainya tetap atau tidak dapat diubah.
- Jenis - jenis tipe data :
    - int -> `0`, `1`, `2`, `3`, `4`, `5`
    - double -> `10.5`, `65.3`, `234.567`
    - bool -> `true` atau `false`
    - string -> `teks`
- Operator digunakan untuk operasi pengolahan data, dana data yang dikelola tersebut disebut operand.
- Operator terdiri dari :
    - Arithmethic -> `+`, `-`, `*`, `/`, `%`
    - Assignment -> `=`, `+=`, `-=`, `*=`, `/=`, `%=`
    - Comparison -> `==`, `<`, `>`, `<=`, `>=`
    - Logical -> `&&`, `||`, `!`
- Fungsi adalah blok bangunan kode yang dapat dibaca, dipelihara, dan dapat digunakan kembali.
- Anonymous Function
    - Tidak memiliki nama
    - Fungsi sebagai data
    ```
    var jumlah = (int a, int b) {
        return a + b;
    }
    ```
- Arrow Function
    - Dapat memiliki nama atau tidak
    - Berisi 1 data (proses maupun data statis)
    - Return fungsi ini diambil dari data tersebut
    ```
    var jumlah = (int a, int b) => a + b;
    ```
- Async-await
    - Menjalankan beberapa proses tanpa perlu menunggu.
    - Proses ditulis dalam bentuk fungsi.
    - `await` akan menuggu hingga proses `async` selesai.
    ```
    Future<String> p1() async {
        await Future.delayed(Duration(seconds: 1), (){
            return 'hello dari p1';
        });
    }

    void p2() {
        print('hello dari p2');
    }

    void main() async {
        var data = await p1();

        print(data);
        p2();
    }

    output: 
    hello dari p1
    hello dari p2
    ```
- Collection -> Kumpulan data pada satu tempat
    - List -> Menyimpan data secara berbaris dan setiap data memiliki index.
        ```
        var numbers = [];
        numbers.add(1);
        numbers.add(2);
        numbers.add(3);
        print(numbers);

        output:
        [1, 2, 3]
        ```
    - Map -> Menyimpan data secara key-value. Key yang berguna selayaknya index pada list.
        ```
        var student = {};
        student['name'] = 'Fulan';
        student['age'] = 21;

        print(student);
        print(student['name']);
        print(student['age']);

        output:
        {name: Fulan, age: 21}
        Fulan
        21
        ```
        
### Branching
**IF**
- Memerlukan nilai boolean (bool) (dari operator logical atau comparison)
- Menjalankan bagian proses jika nilai bool bernilai true
```
var usia = 18;
if (usia < 20) {
    print('Remaja');
}
```
**IF-ELSE**
- Berjalan dengan `if`
- Menambah alternatif jika nilai boolean (bool) adalah false
```
var usia = 18;
if (usia < 20) {
    print('Remaja');
} else {
    print('tidak memiliki golongan');
}
```
atau menggunakan ternary operator (one line if-else)
```
var usia = 18;
usia < 20 ? print('Remaja'); : print('tidak memiliki golongan');
```
**ELSE-IF**
- Menambah alternatif jika nilai boolean (bool) adalah false
- Menambah pengujian nilai boolean (bool) lain
```
var usia = 18;
if (usia < 20) {
    print('Remaja');
} else if (usia < 40 ) {
    print('Dewasa');
} else {
    print('tidak memiliki golongan');
}
```
atau menggunakan ternary operator (one line if-else)
```
var usia = 18;
(usia < 20) ? print('Remaja'); : (usia < 40) ? print('Dewasa'); : print('tidak memiliki golongan');
```        