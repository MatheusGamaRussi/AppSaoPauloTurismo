import 'package:explore_sp/local.dart';
import 'package:flutter/material.dart';

class DetalhesLocal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var local = ModalRoute.of(context)!.settings.arguments as Local;

    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF585454)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(25),
                width: 500,
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 4))
                    ],
                    image: DecorationImage(
                      image: AssetImage(local.url_foto),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 15, bottom: 15, left: 25, right: 25),
                decoration: BoxDecoration(
                    color: Color.fromARGB(218, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 4))
                    ]),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        local.nome,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                      child: Text(
                        'Localizado em: ${local.endereco}',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  local.desc,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
