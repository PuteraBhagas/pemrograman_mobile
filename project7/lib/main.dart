import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// =============================================================
// MAIN PAGE DENGAN NAVIGASI
// =============================================================
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ProfilePage(),
    CounterPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.countertops), label: 'Counter'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}

// =============================================================
// HALAMAN PROFIL (STATELESSWIDGET)
// =============================================================
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              FlutterLogo(size: 100),
              const SizedBox(height: 20),
              // Gambar profil
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(60),
                  image: DecorationImage(
                    image: AssetImage('assets/foto.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                // Jika belum ada gambar di folder assets, gunakan Placeholder
                // Jika ingin menampilkan Placeholder, ganti widget ini dengan conditional seperti berikut:
                // image: DecorationImage(
                //   image: AssetImage('assets/profile.jpg'),
                //   fit: BoxFit.cover,
                //   onError: (exception, stackTrace) {
                //     // Tampilkan widget Placeholder jika gambar tidak ditemukan
                //   },
                // ),
              ),
              const SizedBox(height: 20),
              Text(
                'Putera Bhagas',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'NIM: 234160136',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              Text(
                'Jurusan: Sistem Informasi Bisnis',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.email, color: Colors.deepPurple),
                    Text('p.bhagaswara@gmail.com'),
                    Icon(Icons.phone, color: Colors.deepPurple),
                    Text('+62 811 3033 683'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.info_outline),
                label: Text('Tentang Saya'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =============================================================
// HALAMAN COUNTER (STATEFULWIDGET)
// =============================================================
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);
  void _decrement() => setState(() => _counter--);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nilai Counter:', style: GoogleFonts.poppins(fontSize: 20)),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: GoogleFonts.poppins(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increment,
                  child: const Text('+'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decrement,
                  child: const Text('-'),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: _reset,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
