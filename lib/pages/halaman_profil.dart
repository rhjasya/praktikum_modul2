import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 34,
              backgroundColor: Color(0xffdfe4ff),
              child: Icon(
                Icons.person,
                size: 40,
                color: Color(0xff3949ab),
              ),
            ),

            const SizedBox(height: 18),

            const Text(
              'Profil Mahasiswa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Mahasiswa Pemrograman Perangkat Bergerak\nLanjut',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(
                context,
                AppRoutes.catatan,
              ),
              icon: const Icon(
                Icons.note_alt_outlined,
                size: 16,
              ),
              label: const Text(
                'Buka Halaman Catatan',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff5664a3),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}