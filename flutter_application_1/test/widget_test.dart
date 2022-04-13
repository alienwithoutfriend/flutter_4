// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// void main() {
//   //final keyword >> imutable/ tidak bisa di rubah
//   //const final
//   //const
//   //const String mahasiswa = "beben";
//   final String mahasiswa;

//   mahasiswa = "beben";

//   print(mahasiswa);

//   //null safety
//   //? ! late
//   //? digunakan dia boleh null
//   //String? jurusan;

//   //late untuk di isi nanti
//   late String jurusan;
//   jurusan = "Sistem Informasi";
//   //jurusan = "Sistem Informasi";
//   //jurusan = "SI";
//   // ! memaksa dijalankan/ yakin ada datanya
//   print(jurusan!.length);
//   //print(jurusan.length);

//   //looping perulangan
//   //looping tambah
//   for (int no = 1; no <= 5; no++) {
//     print(no);
//   }
//   //looping kurang
//   for (int no = 5; no >= 1; no--) {
//     print(no);
//   }

//   //while tambah
//   int no1 = 1;
//   int no2 = 5;
//   while (no1 <= no2) {
//     print(no1);
//     no1++;
//   }

//   //while kurang
//   int no3 = 5;
//   int no4 = 1;
//   while (no3 >= no4) {
//     print(no3);
//     no3--;
//   }

//do while

//   int no5 = 5;
//   int no6 = 1;
//   do {
//     print(no5);
//     no5--;
//   } while (no5 >= no6);
// }

//oop
//class

class kendaraan {
  String? merk;
  String? nama;
  int? kecepatan;

  //cuntruktor
  kendaraan({this.merk, this.nama, this.kecepatan});

  //methode
  maju(int tambahkecepatan) {
    kecepatan = kecepatan! + tambahkecepatan;
    //print(kecepatan + tambahkecepatan);
  }
}
//inheritence

class sedan extends kendaraan {
  int? jumlahpintu;
  int? kecepatanmaksimal;
  sedan({String? merk, this.jumlahpintu, this.kecepatanmaksimal})
      : super(merk: merk);
}

void main() {
  var k1 = kendaraan(nama: 'sedan', merk: 'civic', kecepatan: 20);
  k1.merk = 'toyota';
  //print(k1.maju(40));
  print(k1.merk);
  print(k1.nama);
  print(k1.kecepatan);

  var k2 = kendaraan(nama: 'truck', merk: 'molen', kecepatan: 23);
  var kecepatan = k2.maju(47);
  //print(kecepatan);
  print(k2.merk);
  print(k2.nama);
  print(k2.kecepatan);

  var s1 = sedan(jumlahpintu: 4, kecepatanmaksimal: 120, merk: 'honda');
  print('-----');
  print(s1.jumlahpintu);
  print(s1.kecepatanmaksimal);
  print(s1.merk);
}
