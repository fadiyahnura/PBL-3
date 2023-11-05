import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Isi profil'),
            // Tambahkan widget untuk menampilkan isi keranjang belanja di sini
          ],
        ),
      ),
    );
  }
}
