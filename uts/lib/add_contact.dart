import 'package:flutter/material.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _groupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Tambah Kontak"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Bagian email akun di atas
                    Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "laffandi1980@gmail.com",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Kartu profil
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.white24),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.credit_card),
                            label: const Text("Buat kartu profil"),
                          ),
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.blueGrey,
                                child:
                                    Icon(Icons.person, color: Colors.white, size: 35),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(Icons.edit,
                                    color: Colors.white, size: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Input Nama
                    _buildInputField(
                      controller: _nameController,
                      icon: Icons.person_outline,
                      label: "Nama",
                    ),
                    const SizedBox(height: 12),

                    // Input Telepon
                    _buildInputField(
                      controller: _phoneController,
                      icon: Icons.phone_outlined,
                      label: "Telepon",
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 12),

                    // Input Email
                    _buildInputField(
                      controller: _emailController,
                      icon: Icons.email_outlined,
                      label: "Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 12),

                    // Input Kelompok
                    _buildInputField(
                      controller: _groupController,
                      icon: Icons.group_outlined,
                      label: "Kelompok",
                    ),

                    const SizedBox(height: 12),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Lihat lainnya",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Tombol bawah
            Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Batal",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {
                      // Logika simpan nanti bisa ditambahkan
                      Navigator.pop(context);
                    },
                    child: const Text("Simpan"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required IconData icon,
    required String label,
    TextInputType? keyboardType,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.white70),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
