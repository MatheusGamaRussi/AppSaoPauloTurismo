import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CadastroStates();
  }
}

class CadastroStates extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
            'https://raw.githubusercontent.com/MatheusGamaRussi/AppSaoPauloTurismo/main/Images/paulista.jpg'
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 236, 236, 1.0),
                labelText: 'Nome de usuário',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 236, 236, 1.0),
                labelText: 'E-mail',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 236, 236, 1.0),
                labelText: 'Senha',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Container(
              width: getScreenWidth(),
              height: 60,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    color: Color(0xFFd5d5d5),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF585454),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

double getScreenWidth() {
    return WidgetsBinding.instance!.window.physicalSize.width / WidgetsBinding.instance!.window.devicePixelRatio;
  }
