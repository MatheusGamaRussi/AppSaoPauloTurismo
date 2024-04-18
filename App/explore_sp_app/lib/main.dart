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
          body: Column(
            children: [
              Image.network(
                'https://raw.githubusercontent.com/MatheusGamaRussi/AppSaoPauloTurismo/main/Images/paulista.jpg', 
                alignment: Alignment.topCenter
              ),
              const Padding(
                padding: EdgeInsets.all(16)
              ),
              const TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email ou Nome do Usuário',
              ),),
              const Padding(
                padding: EdgeInsets.all(16)
              ),
              const TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Senha',
              ),),
            ],
          ),
        ),
    );
  }
}
