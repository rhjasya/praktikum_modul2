import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanBeranda extends StatefulWidget {
  const HalamanBeranda({super.key});

  @override
  State<HalamanBeranda> createState() =>
      _HalamanBerandaState();
}

class _HalamanBerandaState
    extends State<HalamanBeranda> {
  String _pesan =
      'Halaman detail ditutup tanpa mengirim data.';

  Future<void> _bukaDetail() async {
    final hasil = await Navigator.pushNamed(
      context,
      AppRoutes.detail,
      arguments: {
        'judul': 'Detail Mata Kuliah',
        'keterangan':
            'Pemrograman Perangkat Bergerak Lanjut mempelajari pengembangan aplikasi mobile menggunakan Flutter.',
      },
    );

    if (!mounted) return;

    setState(() {
      if (hasil is String) {
        _pesan = hasil;
      } else {
        _pesan =
            'Halaman detail ditutup tanpa mengirim data.';
      }
    });
  }

  void _ujiRouteSalah() {
    Navigator.pushNamed(
      context,
      '/salah',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.home,
            size: 64,
          ),

          const SizedBox(height: 16),

          const Text(
            'Halaman Beranda',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            _pesan,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 24),

          SizedBox(
            width: 180,
            height: 45,
            child: ElevatedButton.icon(
              onPressed: _bukaDetail,
              icon: const Icon(
                Icons.open_in_new,
                size: 16,
              ),
              label: const Text(
                'Buka Halaman Detail',
              ),
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            width: 150,
            height: 40,
            child: OutlinedButton.icon(
              onPressed: _ujiRouteSalah,
              icon: const Icon(
                Icons.warning_amber,
                size: 16,
              ),
              label: const Text(
                'Uji Route /salah',
              ),
            ),
          ),
        ],
      ),
    );
  }
}