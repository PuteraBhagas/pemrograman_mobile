import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Scaffold & AppBar"),
          backgroundColor: Colors.teal,
          actions: const [
            Icon(Icons.search),
            Icon(Icons.settings),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Atas"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, color: Colors.red, size: 40),
                    Icon(Icons.star, color: Colors.green, size: 40),
                    Icon(Icons.star, color: Colors.blue, size: 40),
                  ],
                ),
                const Text("Bawah"),
                const SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.amber,
                  child: const Center(
                    child: Text("Halo Flutter"),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.orange,
                  alignment: Alignment.bottomRight,
                  child: const Text("Sudut kanan bawah"),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Gradient Container",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  color: Colors.blue,
                  child: const Text(
                    "Dengan Margin & Padding",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print("Elevated Button ditekan!");
                  },
                  child: const Text("Elevated Button"),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    print("Text Button ditekan!");
                  },
                  child: const Text("Text Button"),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                    print("Outlined Button ditekan!");
                  },
                  child: const Text("Outlined Button"),
                ),
                const SizedBox(height: 10),
                IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {
                    print("Icon Button ditekan!");
                  },
                ),
                const SizedBox(height: 20),
                // Tambahan kode FlutterLogo
                const FlutterLogo(
                  size: 100,
                  style: FlutterLogoStyle.horizontal,
                  textColor: Colors.blue,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Floating Action Button ditekan!");
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}