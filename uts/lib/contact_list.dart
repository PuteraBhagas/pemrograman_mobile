import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  int _selectedIndex = 2;
  int? _expandedIndex; // untuk menyimpan index kontak yang diklik

  final List<Map<String, String>> contacts = const [
    {'name': 'Aan Adek', 'phone': '+6282250652999'},
    {'name': 'Mawardi Muzakki', 'phone': '+628123456789'},
    {'name': 'Tri Ratna Pacitan', 'phone': '+628987654321'},
    {'name': 'Anendita Les English', 'phone': '+628564738291'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleExpand(int index) {
    setState(() {
      _expandedIndex = _expandedIndex == index ? null : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Telepon',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/add_contact');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'settings', child: Text('Setelan')),
              const PopupMenuItem(value: 'help', child: Text('Bantuan')),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          // Bagian Profil Saya
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Profil saya',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text('L', style: TextStyle(color: Colors.white)),
            ),
            title: const Text('Luqman Affandi',
                style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 10),

          // Bagian Favorit
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              '★ Favorit',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          ...contacts.asMap().entries.map((entry) {
            int index = entry.key;
            var contact = entry.value;

            // hanya Aan Adek di bagian favorit
            if (index > 0) return const SizedBox.shrink();

            final isExpanded = _expandedIndex == index;

            return GestureDetector(
              onTap: () => _toggleExpand(index),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                decoration: BoxDecoration(
                  color:
                      isExpanded ? const Color(0xFF1E1E1E) : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text(contact['name']!,
                          style: const TextStyle(color: Colors.white)),
                    ),
                    if (isExpanded)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Column(
                          children: [
                            Text(
                              contact['phone']!,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.call, color: Colors.white),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child:
                                      Icon(Icons.message, color: Colors.white),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.video_call,
                                      color: Colors.white),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child:
                                      Icon(Icons.info, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            );
          }),

          const SizedBox(height: 10),

          // Bagian Kelompok
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.group, color: Colors.grey),
                SizedBox(width: 10),
                Text('Kelompok', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),

          // Kontak lainnya
          ...contacts.asMap().entries.map((entry) {
            int index = entry.key;
            if (index == 0) return const SizedBox.shrink(); // skip favorit
            var contact = entry.value;
            final isExpanded = _expandedIndex == index;

            return GestureDetector(
              onTap: () => _toggleExpand(index),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                decoration: BoxDecoration(
                  color:
                      isExpanded ? const Color(0xFF1E1E1E) : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text(contact['name']!,
                          style: const TextStyle(color: Colors.white)),
                    ),
                    if (isExpanded)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Column(
                          children: [
                            Text(
                              contact['phone']!,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.call, color: Colors.white),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child:
                                      Icon(Icons.message, color: Colors.white),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.video_call,
                                      color: Colors.white),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child:
                                      Icon(Icons.info, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dialpad),
            label: 'Keypad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Terbaru',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Kontak',
          ),
        ],
      ),
    );
  }
}