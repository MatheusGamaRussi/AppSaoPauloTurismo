import 'package:explore_sp/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:explore_sp/home.dart';  // Ajuste os imports conforme necessário

class Usuario {
  final String nome;

  const Usuario(this.nome);
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginStates();
}

class LoginStates extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String _nUsu = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Image.network(
                'https://raw.githubusercontent.com/MatheusGamaRussi/AppSaoPauloTurismo/main/Images/paulista.jpg',
              ),
              const SizedBox(height: 30),
              
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color:  Color(0xFF585454),
                    fontSize: 30.0,
                  ),
                ),                
              ),

              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(240, 236, 236, 1.0),
                    labelText: 'Nome de usuário',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor insira um Nome';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _nUsu = value;
                    });
                  },
                  inputFormatters: [LengthLimitingTextInputFormatter(50)],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(240, 236, 236, 1.0),
                    labelText: 'E-mail',
                  ),
                  validator: (value) {
                    RegExp emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                    if (value == null || value.isEmpty) {
                      return 'Por favor insira um email válido';
                    } else if (!emailRegex.hasMatch(value)) {
                      return 'Email inválido';
                    }
                    return null;
                  },
                  inputFormatters: [LengthLimitingTextInputFormatter(50)],
                ),
              ),

              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(240, 236, 236, 1.0),
                    labelText: 'Senha',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor insira uma senha';
                    }
                    return null;
                  },
                  inputFormatters: [LengthLimitingTextInputFormatter(50)],
                ),
              ),

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 175,
                    height: 60,
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          Usuario usu = Usuario(_nUsu);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                              settings: RouteSettings(arguments: usu),
                            ),
                          );
                        }
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
                  const SizedBox(width: 60),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Cadastro()));
                        },
                        child: const Text(
                          'Cadastre-se!',
                          style: TextStyle(
                            color: Color(0xFF585454),
                            fontWeight: FontWeight.bold,
                          ),
                        ),                        
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12.0,)
            ],
          ),
        ),
      ),
    );
  }
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
