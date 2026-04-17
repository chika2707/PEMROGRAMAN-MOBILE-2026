### Codingan 

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ================= ROOT APP =================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BudayaPage(),
    );
  }
}

// ================= MODEL =================
class Budaya {
  final String nama;
  final String gambar;
  final String deskripsi;
  final double rating;

  Budaya({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
    required this.rating,
  });
}

// ================= HALAMAN LIST =================
class BudayaPage extends StatelessWidget {
  const BudayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Budaya> data = [
      Budaya(
        nama: "Sayyang Pattuqduq",
        gambar: "assets/sayyang.jpg",
        deskripsi:
            "Tradisi arak-arakan kuda menari sebagai bentuk penghormatan bagi anak yang telah khatam Al-Qur’an.",
        rating: 4.9,
      ),
      Budaya(
        nama: "Sandeq",
        gambar: "assets/sandeq.jpg",
        deskripsi:
            "Perahu tradisional khas suku Mandar yang ramping dan cepat, digunakan nelayan serta menjadi simbol kebanggaan budaya.",
        rating: 4.9,
      ),
      Budaya(
        nama: "Tenun Sutra Mandar",
        gambar: "assets/tenun.jpg",
        deskripsi:
            "Kain tenun tradisional dengan motif khas yang memiliki nilai seni tinggi dan digunakan dalam acara adat.",
        rating: 4.8,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Budaya Mandar"),
        backgroundColor: Colors.green[800],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  item.gambar,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(item.nama),
              subtitle: const Text("Tap untuk lihat detail"),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(budaya: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// ================= HALAMAN DETAIL =================
class DetailPage extends StatelessWidget {
  final Budaya budaya;

  const DetailPage({super.key, required this.budaya});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(budaya.nama),
        backgroundColor: Colors.green[800],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                budaya.gambar,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              budaya.nama,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(budaya.deskripsi, textAlign: TextAlign.center),
            ),

            const SizedBox(height: 10),

            Text(
              "Rating: ${budaya.rating} ⭐",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Tutup"),
            ),
          ],
        ),
      ),
    );
  }
}

---



  
