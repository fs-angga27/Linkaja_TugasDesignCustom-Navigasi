import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final int currentIndex;

  const BottomNavbar({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Tetap menampilkan semua ikon
      currentIndex: currentIndex, // Indeks tombol aktif
      selectedItemColor: Colors.blue, // Warna biru untuk item aktif
      unselectedItemColor: Colors.grey, // Warna abu untuk item tidak aktif
      showSelectedLabels: true, // Menampilkan label tombol yang dipilih
      showUnselectedLabels: true, // Menampilkan label tombol yang tidak dipilih
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/aplikasi'); // Menuju Home
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/'); // Menuju History
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/'); // Menuju Pay
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/'); // Menuju Inbox
            break;
          case 4:
            Navigator.pushReplacementNamed(
                context, '/profile'); // Menuju Profile
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), // Ikon Home
          label: 'Home', // Label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.description_outlined), // Ikon History
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code_scanner), // Ikon Pay
          label: 'Pay',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email_outlined), // Ikon Inbox
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined), // Ikon Profile
          label: 'Profile',
        ),
      ],
    );
  }
}
