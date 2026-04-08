import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 05',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Selamat Datang Aplikasi Teknologi'),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 🔽 IKON
                Icon(Icons.computer, size: 90, color: Colors.deepPurple),

                SizedBox(height: 30),

                // 🔽 JUDUL
                Text(
                  'Selamat Datang di Tech App',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 15),

                // 🔽 DESKRIPSI
                Text(
                  'Aplikasi ini memberikan informasi seputar teknologi terbaru dan membantu Anda memahami dunia digital.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),

                SizedBox(height: 25),

                // 🔽 TEKS TAMBAHAN
                Text(
                  'Explore Technology 💻',
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
