import 'dart:io';

import 'package:project1/project1.dart' as project1;
const String nama = 'Putera';
  
void main(List<String> arguments) {
 // print('Hello world: ${project1.calculate()}!');
 //satu line comment
 /*
 multi line comment
 banyak line comment
 */
//constanta dan final
final String nama2 = 'Bhagas';
print("Nama saya $nama $nama2");
//variable
int umur = 22;
  double tinggi = 180.5;
  bool jenisKelamin = false; //true = laki-laki, false = perempuan
  String alamat = 'Jl. Bunga Widara 1 no 1';
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln(
    "Jenis Kelamin saya ${jenisKelamin ? 'Laki-laki' : 'Perempuan'}" 
  );
 //if (jenis_kelamin==true) {
 //   stdout.writeln("Jenis kelamin saya Laki-laki");
 //} else {
  //   stdout.writeln("Jenis kelamin saya Perempuan");
  // }
   stdout.writeln("Alamat saya $alamat");
    num nilai = 90.5; //bisa diisi int atau double
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = "16";
  stdout.writeln("Nilai dari dynamic adalah $bebas");
  //String angka1 = "15";
  //int angka2 = int.parse(angka1);
  //int angka3 = bebas;
  //list
  List<String> hobby = ["Min Game", "Berenang", "Basketan"];
  hobby.add("Shopping");
  stdout.writeln("Hobby saya adalah $hobby");
   Map<String, String> data = {
    "nama": "Dian",
    "alamat": "Malang",
    "jenis_kelamin": "Perempuan",
  };
  data["pekerjaan"] = "Dosen";
  data.addAll({"hobi": "Membaca"});

  stdout.writeln("Data : $data");
  stdout.writeln("Nama yg ada di data ${data['nama']}");
}
