import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: Image.network('https://files.tecnoblog.net/wp-content/uploads/2022/09/stable-diffusion-imagem.jpg?_gl=1*1v36vv4*_ga*MTg3NTcyMDg2Ny4xNzEzNDQzNDUz*_ga_2XDPKDWNEB*MTcxMzQ0MzQ1My4xLjAuMTcxMzQ0MzQ1NC41OS4wLjA.'),
          ),
        ),
    );
  }
}
