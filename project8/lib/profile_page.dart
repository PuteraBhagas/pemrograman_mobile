import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final List<String> mataKuliah = [
    "Pemrograman Mobile",
    "Kecerdasan Bisnis",
    "Metodelogi Penelitian",
    "Manajemen Rantai Pasok",
    "Audit Sistem Informasi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xFFF3E5F5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Profil Card
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/images/avatar.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Putera Bhagaswara",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                            Text("NIM: 2341760136",
                                style: TextStyle(fontSize: 16)),
                            Text("Jurusan: Sistem Informasi Bisnis",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),
              const Text(
                "Daftar Mata Kuliah Semester 5",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 12),

              // ListView Mata Kuliah
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mataKuliah.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: const Icon(Icons.book, color: Colors.deepPurple),
                      title: Text(mataKuliah[index]),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: const Icon(Icons.photo_library_outlined),
                label: const Text("Lihat Galeri"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 148, 148, 229),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/gallery');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
