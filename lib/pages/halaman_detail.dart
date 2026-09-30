import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({
    super.key,
    required this.judul,
    required this.keterangan,
  });

  final String judul;
  final String keterangan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              judul,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              keterangan,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 16,
                ),
                label: const Text('Kembali'),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pop(
                    context,
                    'Halaman detail ditutup dengan nilai.',
                  );
                },
                icon: const Icon(
                  Icons.send,
                  size: 16,
                ),
                label: const Text('Kembali dengan Nilai'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}