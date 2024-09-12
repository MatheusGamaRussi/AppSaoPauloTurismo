import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return CadastroStates();
  }
}

class CadastroStates extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0.0),
        child: CadastroForm(formKey: _formKey),
      ),
    );
  }
}

class CadastroForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const CadastroForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Image.network(
            'https://raw.githubusercontent.com/MatheusGamaRussi/AppSaoPauloTurismo/main/Images/paulista.jpg',
          ),
          const SizedBox(height: 60),
           Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(240, 236, 236, 1.0)), // Cor da borda
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 236, 236, 1.0),
                labelText: 'Nome de usuário',
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Por favor insira um Nome';
                } return null;
              },
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
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
            ),
          ),
          const SizedBox(height: 30),
           Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
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
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: SizedBox(
              width: MediaQuery.of(context).size.width, // Corrigido para usar MediaQuery
              height: 60,
              child: TextButton(
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Usuário cadastrado com sucesso!')),
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
                  'Cadastrar',
                  style: TextStyle(
                    color: Color(0xFFd5d5d5),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12.0),
        ],
      ),
    );
  }
}