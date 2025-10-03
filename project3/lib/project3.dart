// ...existing code...

void main() {
  // 1. Program untuk menyimpan daftar nama mahasiswa menggunakan Growable List
  print('1. DAFTAR NAMA MAHASISWA (Growable List)');
  print('=========================================');
  
  // Membuat growable list untuk menyimpan nama mahasiswa
  List<String> mahasiswa = [];
  
  // Menambahkan nama mahasiswa
  mahasiswa.add('Putera');
  mahasiswa.add('Rizky');
  mahasiswa.add('Aldo');
  mahasiswa.add('Daffa');
  mahasiswa.add('Ciko');
  
  print('Daftar Mahasiswa:');
  for (int i = 0; i < mahasiswa.length; i++) {
    print('${i + 1}. ${mahasiswa[i]}');
  }
  
  print('Jumlah mahasiswa: ${mahasiswa.length}');
  
  // Menambah mahasiswa baru untuk menunjukkan growable list
  mahasiswa.addAll(['Renald', 'Zaki']);
  print('\nSetelah menambah 2 mahasiswa baru:');
  print('Jumlah mahasiswa sekarang: ${mahasiswa.length}');
  for (var nama in mahasiswa) {
    print('- $nama');
  }
  
  print('\n${'='*50}\n');
  
  // 2. Program untuk menghitung union & intersection dari dua set dengan data string
  print('2. UNION & INTERSECTION SET (Data String)');
  print('========================================');
  
  // Membuat dua set dengan data string
  Set<String> setA = {'Apel', 'Jeruk', 'Mangga', 'Pisang', 'Anggur'};
  Set<String> setB = {'Mangga', 'Pisang', 'Semangka', 'Melon', 'Strawberry'};
  
  print('Set A: $setA');
  print('Set B: $setB');
  
  // Menghitung Union (gabungan)
  Set<String> unionSet = setA.union(setB);
  print('\nUnion (A ∪ B): $unionSet');
  print('Jumlah elemen union: ${unionSet.length}');
  
  // Menghitung Intersection (irisan)
  Set<String> intersectionSet = setA.intersection(setB);
  print('\nIntersection (A ∩ B): $intersectionSet');
  print('Jumlah elemen intersection: ${intersectionSet.length}');
  
  // Menghitung Difference
  Set<String> differenceAB = setA.difference(setB);
  Set<String> differenceBA = setB.difference(setA);
  print('\nDifference (A - B): $differenceAB');
  print('Difference (B - A): $differenceBA');
  
  print('\n${'='*50}\n');
  
  // 3. Map untuk menyimpan data barang (kode, nama, harga) - minimal 3 barang
  print('3. DATA BARANG MENGGUNAKAN MAP');
  print('==============================');
  
  // Membuat map untuk menyimpan data barang
  Map<String, Map<String, dynamic>> dataBarang = {
    'BRG001': {
      'nama': 'Laptop ASUS ROG',
      'harga': 15000000,
      'kategori': 'Elektronik',
      'stok': 5
    },
    'BRG002': {
      'nama': 'Mouse Gaming Logitech',
      'harga': 350000,
      'kategori': 'Aksesoris',
      'stok': 25
    },
    'BRG003': {
      'nama': 'Keyboard Mechanical',
      'harga': 750000,
      'kategori': 'Aksesoris',
      'stok': 12
    },
    'BRG004': {
      'nama': 'Monitor 24 inch',
      'harga': 2500000,
      'kategori': 'Elektronik',
      'stok': 8
    },
    'BRG005': {
      'nama': 'Webcam HD',
      'harga': 450000,
      'kategori': 'Aksesoris',
      'stok': 15
    }
  };
  
  print('DAFTAR BARANG:');
  print('-' * 80);
  print('${'Kode'.padRight(8)} | ${'Nama Barang'.padRight(25)} | ${'Harga'.padLeft(12)} | ${'Kategori'.padRight(10)} | ${'Stok'.padLeft(4)}');
  print('-' * 80);
  
  dataBarang.forEach((kode, info) {
    String nama = info['nama'];
    int harga = info['harga'];
    String kategori = info['kategori'];
    int stok = info['stok'];
    
  print('${kode.padRight(8)} | ${nama.padRight(25)} | ${formatRupiah(harga.toDouble()).padLeft(12)} | ${kategori.padRight(10)} | ${stok.toString().padLeft(4)}');
  });
  
  // Statistik barang
  int totalBarang = dataBarang.length;
  int totalNilai = dataBarang.values
      .map((barang) => (barang['harga'] as int) * (barang['stok'] as int))
      .reduce((a, b) => a + b);
  
  print('-' * 80);
  print('Total jenis barang: $totalBarang');
  print('Total nilai inventori: ${formatRupiah(totalNilai.toDouble())}');
  
  print('\n${'='*50}\n');
  
  // 4. Function closure yang menghitung diskon bertingkat
  print('4. FUNCTION CLOSURE - DISKON BERTINGKAT');
  print('======================================');
  
  // Membuat closure untuk menghitung diskon bertingkat
  Function createDiscountCalculator() {
    // Closure yang menyimpan aturan diskon
    return (double totalBelanja) {
      double diskon = 0;
      double hargaSetelahDiskon = totalBelanja;
      String keterangan = '';
      
      if (totalBelanja >= 1000000) {
        // Diskon 15% untuk pembelian >= 1 juta
        diskon = 0.15;
        keterangan = 'Diskon VIP 15%';
      } else if (totalBelanja >= 500000) {
        // Diskon 10% untuk pembelian >= 500 ribu
        diskon = 0.10;
        keterangan = 'Diskon Gold 10%';
      } else if (totalBelanja >= 200000) {
        // Diskon 5% untuk pembelian >= 200 ribu
        diskon = 0.05;
        keterangan = 'Diskon Silver 5%';
      } else {
        keterangan = 'Tidak ada diskon';
      }
      
      double jumlahDiskon = totalBelanja * diskon;
      hargaSetelahDiskon = totalBelanja - jumlahDiskon;
      
      return {
        'totalBelanja': totalBelanja,
        'persenDiskon': diskon * 100,
        'jumlahDiskon': jumlahDiskon,
        'hargaAkhir': hargaSetelahDiskon,
        'keterangan': keterangan
      };
    };
  }
  
  // Menggunakan closure
  var hitungDiskon = createDiscountCalculator();
  
  // Test dengan berbagai jumlah pembelian
  List<double> testBelanja = [150000, 250000, 600000, 1200000, 50000];
  
  print('SIMULASI PERHITUNGAN DISKON:');
  print('-' * 70);
  print('${'Total Belanja'.padRight(15)} | ${'Diskon'.padRight(12)} | ${'Potongan'.padRight(12)} | ${'Bayar'.padRight(12)}');
  print('-' * 70);
  
  for (double belanja in testBelanja) {
    var hasil = hitungDiskon(belanja);
    
    print('${'${formatRupiah(hasil['totalBelanja']).padRight(15)} | '
          '${hasil['persenDiskon'].toStringAsFixed(0)}%'.padRight(12)} | ${formatRupiah(hasil['jumlahDiskon']).padRight(12)} | ${formatRupiah(hasil['hargaAkhir'])}');
  }
  
  print('-' * 70);
  
  // Demonstrasi closure dengan contoh interaktif
  print('\nCONTOH DETAIL PERHITUNGAN:');
  var contohPembelian = 750000.0;
  var hasilDetail = hitungDiskon(contohPembelian);
  
  print('\nPembelian: ${formatRupiah(contohPembelian)}');
  print('Kategori: ${hasilDetail['keterangan']}');
  print('Diskon: ${hasilDetail['persenDiskon']}%');
  print('Potongan: ${formatRupiah(hasilDetail['jumlahDiskon'])}');
  print('Total Bayar: ${formatRupiah(hasilDetail['hargaAkhir'])}');
  
  // Membuat closure lain dengan aturan berbeda
  Function createMemberDiscountCalculator(String memberType) {
    double memberDiscount = 0;
    switch (memberType.toLowerCase()) {
      case 'platinum':
        memberDiscount = 0.20;
        break;
      case 'gold':
        memberDiscount = 0.15;
        break;
      case 'silver':
        memberDiscount = 0.10;
        break;
      default:
        memberDiscount = 0;
    }
    
    return (double amount) {
      double discount = amount * memberDiscount;
      return {
        'memberType': memberType,
        'originalAmount': amount,
        'discountPercent': memberDiscount * 100,
        'discountAmount': discount,
        'finalAmount': amount - discount
      };
    };
  }
  
  print('\n\nCONTOH MEMBER DISCOUNT CLOSURE:');
  var platinumCalculator = createMemberDiscountCalculator('Platinum');
  var goldCalculator = createMemberDiscountCalculator('Gold');
  
  double testAmount = 500000;
  var platinumResult = platinumCalculator(testAmount);
  var goldResult = goldCalculator(testAmount);
  
  print('Pembelian: ${formatRupiah(testAmount)}');
  print('Member Platinum: ${formatRupiah(platinumResult['finalAmount'])} (diskon ${platinumResult['discountPercent']}%)');
  print('Member Gold: ${formatRupiah(goldResult['finalAmount'])} (diskon ${goldResult['discountPercent']}%)');
  
  print('\n${'='*50}');
  print('PROGRAM SELESAI - Semua requirement telah dipenuhi!');
  print('='*50);
}

// Helper function untuk format rupiah
String formatRupiah(double amount) {
  return 'Rp ${amount.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
}