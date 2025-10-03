

void main(List<String> arguments) {
 // print('Hello world: ${project2.calculate()}!');
 //list
//  var fl = List<int>.filled(4, 1);
//  fl[0]= 1;
//  fl[1]= 2;
//  fl[2]= 3;
//  fl[3]= 4;
//  //fl[4]= 5;

// var gl= [1,2,3];
// gl.add(4);
// gl.remove(2);
//  // cetak
//  stdout.writeln(gl);

//  var setNilai = <int> {};
//  var setNilai2 = {3,3,4,5};

//  stderr.writeln('Jumalah data setNilai = ');
//  String? input1 = stdin.readLineSync();
//  int jumlah1 =(int.tryParse(input1 ?? '') ?? 0);
//  for (int i = 0; i < jumlah1; i++) {
// stderr.writeln('Masukan nilai ke-${i+1}= ');
//   String? input = stdin.readLineSync();
//   int nilai = (int.tryParse(input ?? '') ?? 0);
//   setNilai.add(nilai);
// }

// print(setNilai);
// print(setNilai.union(setNilai2));
// print(setNilai.intersection(setNilai2));

// var setNilai = <String> {};

//  stderr.writeln('Jumalah data setNilai = ');
//  String? input1 = stdin.readLineSync();
//  int jumlah1 =(int.tryParse(input1 ?? '') ?? 0);
//  for (int i = 0; i < jumlah1; i++) {
// stderr.writeln('Masukan nilai ke-${i+1}= ');
//   String? input = stdin.readLineSync();
//   String nilai = input ?? '';
//   setNilai.add(nilai);
// }
// print (setNilai.elementAt(0));

var sudah = {'nim': "101", 'nama': "Bhagas", 'Umur': 22};
print(sudah);
print(sudah['nama']);
var opo= {
  'nim': ["101", "102"],
  'nama': ["Bhagas", "Ciko"],
  'Umur': [22, 23]
};
print(opo);
print(opo['nama']![1]);
}
