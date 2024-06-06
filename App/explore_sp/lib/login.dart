import 'package:explore_sp/cadastro.dart';
import 'package:explore_sp/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Usuario {
  final String nome;

  const Usuario(this.nome);
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginStates();
  }
}

class LoginStates extends State<Login> {
  String n_usu = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
              'https://raw.githubusercontent.com/MatheusGamaRussi/AppSaoPauloTurismo/main/Images/paulista.jpg'),
          const SizedBox(
            height: 105,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 236, 236, 1.0),
                labelText: 'Nome de usuário',
              ),
              onChanged: (value) {
                n_usu = value;
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
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
              SizedBox(
                width: 175,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Usuario usu = Usuario(n_usu);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage(),
                          settings: RouteSettings(arguments: usu)),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF585454),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: const Text(
                    'Continuar',
                    style: TextStyle(
                      color: Color(0xFFd5d5d5),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              Column(
                children: <Widget>[
                  const Text(
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
                            builder: (context) => const Cadastro()),
                      );
                    },
                    child: const Text(
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
  // ignore: deprecated_member_use
  return WidgetsBinding.instance.window.physicalSize.width /
      // ignore: deprecated_member_use
      WidgetsBinding.instance.window.devicePixelRatio;
}
