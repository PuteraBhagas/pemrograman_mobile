import 'dart:io';

void main() {
  Map<String, int> mahasiswa = {}; // map untuk menyimpan data mhs

  print("Masukkan jumlah mahasiswa : "); // menentukan jumlah mhs
  String? mhs = stdin.readLineSync();
  int jmlh = int.tryParse(mhs ?? '') ?? 0;
  int i = 0;

  while (i < jmlh) {
    stdout.write("Masukkan nama mahasiswa ke-${i + 1} : "); // input nama 
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai $nama : ");  // input nilai 
    String? nilai = stdin.readLineSync();
    int nil = int.tryParse(nilai ?? '') ?? 0;

    if(nama != null && nama.isNotEmpty && nil >=0 && nil <=100){ // jika semua kondisi terpenuhi data akan di simpan dan lanjut ke iterasi berikutnya 
      mahasiswa[nama] = nil; 
      i++;
    } else {
      print("Pastikan nama tidak kodong dan nilai antara 0 - 100"); // jika ketentuan tidak terpenuhi
    }
  }

  for (String nama in mahasiswa.keys) { // mengambil data dari map 
    int nilai = mahasiswa[nama] ?? 0;
    String status;

    if ((nilai >= 80) && (nilai <= 100)) {
      status = "Kategori A";
    } else if ((nilai >= 60) && (nilai <= 79)) { // memisahkan nilai menjadi kategori 
      status = "Kategori B";
    } else if ((nilai >= 0) && (nilai <= 59)) {
      status = "Kategori C";
    } else{
      status = "nilai invalid";
    }
    print("$nama : $nilai ($status)"); // output data 
  }
}