
import 'package:explore_sp_app/cadastro.dart';
import 'package:explore_sp_app/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginStates();
  }
}

class LoginStates extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
            'https://raw.githubusercontent.com/MatheusGamaRussi/AppSaoPauloTurismo/main/Images/paulista.jpg'
          ),
          const SizedBox(
            height: 105,
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
                labelText: 'E-mail ou Nome de usuário',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 175,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage()
                      ),
                    );
                  },
                  child: Text(
                    'Continuar',
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
              const SizedBox(
                width: 60,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Primeira vez aqui?',
                    style: TextStyle(
                      color: Color.fromRGBO(129, 127, 127, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cadastro()
                        ),
                      );
                    }, 
                    child: Text(
                      'Cadastre-se!',
                      style: TextStyle(
                        color: Color(0xFF585454),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

double getScreenWidth() {
    return WidgetsBinding.instance!.window.physicalSize.width / WidgetsBinding.instance!.window.devicePixelRatio;
  }
