import 'package:explore_sp/local.dart';
import 'package:flutter/material.dart';

class DetalhesLocal extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    final local = ModalRoute.of(context)!.settings.arguments as Local;

    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF585454)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(image: AssetImage(local.url_foto)),
              Text(local.nome),
              Text(local.endereco),
              Text(local.desc),
            ],
          ),
        ),
      ),
    );
  }
}
