import 'package:explore_sp/detalhes_local.dart';
import 'package:explore_sp/login.dart';
import 'package:flutter/material.dart';
import 'package:explore_sp/local.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeStates();
  }
}

class HomeStates extends State<HomePage> {
  String n_local = '';
  String end_local = '';
  String path_img_local = '';
  String desc_local = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final usuario = ModalRoute.of(context)!.settings.arguments as Usuario;

    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF585454), actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: Colors.white,
        ),
      ]),
      drawer: const NavDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Você entrou como: ${usuario.nome}",
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 250,
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/1-masp.jpg'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 10),
                    child: Row(
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF585454),
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          child:
                              const Text('MASP - Museu de Artes de São Paulo'),
                          onPressed: () {
                            n_local = 'MASP - Museu de Artes de São Paulo';
                            end_local =
                                'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200';
                            path_img_local = 'assets/img/1-masp.jpg';
                            desc_local =
                                'O Museu de Arte de São Paulo (MASP), fundado em 1947, é um dos mais importantes museus de arte da América Latina. Localizado na Avenida Paulista, em São Paulo, destaca-se por seu icônico prédio de vidro e concreto suspenso projetado por Lina Bo Bardi. O MASP abriga uma vasta coleção de obras que abrangem desde o Renascimento até a arte contemporânea, incluindo peças de grandes mestres como Van Gogh, Rembrandt e Portinari.';

                            Local local = Local(
                                n_local, end_local, path_img_local, desc_local);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetalhesLocal(),
                                  settings: RouteSettings(arguments: local)),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Favorite(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.place,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 350,
                    height: 250,
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/2-rock.jpg'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 10),
                    child: Row(
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF585454),
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          child: const Text('Galeria do Rock'),
                          onPressed: () {
                            n_local = 'Galeria do Rock';
                            end_local =
                                'Av. São João, 439 - República, São Paulo - SP, 01035-000';
                            path_img_local = 'assets/img/2-rock.jpg';
                            desc_local =
                                'A Galeria do Rock, inaugurada em 1963, é um centro comercial emblemático de São Paulo localizado no centro da cidade. Famosa por sua forte ligação com a cultura jovem e a cena musical, especialmente o rock, a galeria abriga mais de 450 lojas que vendem discos, roupas, acessórios, tatuagens e piercings. É um ponto de encontro vibrante para amantes da música, arte urbana e cultura alternativa.';

                            Local local = Local(
                                n_local, end_local, path_img_local, desc_local);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetalhesLocal(),
                                  settings: RouteSettings(arguments: local)),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Favorite(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.place,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 350,
                    height: 250,
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/3-farol.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 10),
                    child: Row(
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF585454),
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          child: const Text('Farol Santander'),
                          onPressed: () {
                            n_local = 'Farol Santander';
                            end_local =
                                'R. João Brícola, 24 - Centro Histórico de São Paulo, São Paulo - SP, 01014-900';
                            path_img_local = 'assets/img/3-farol.png';
                            desc_local =
                                'O Farol Santander, inaugurado em 2018, está situado no histórico Edifício Altino Arantes, no centro de São Paulo. Antiga sede do Banespa, o prédio, inspirado no Empire State Building, oferece exposições de arte, um mirante com vista panorâmica da cidade, e espaços culturais e de inovação. Com 35 andares, é um marco arquitetônico e cultural que conecta a história paulistana com o futuro.';

                            Local local = Local(
                                n_local, end_local, path_img_local, desc_local);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetalhesLocal(),
                                  settings: RouteSettings(arguments: local)),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Favorite(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.place,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 30,
              height: 90,
              color: const Color(0xFF585454),
              child: const Center(
                child: Text(
                  'ExploreSP',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Favoritos',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF585454)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      );
}

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => FavoriteState();
}

class FavoriteState extends State<Favorite> {
  // ignore: non_constant_identifier_names
  bool is_favorite = false;

  void toggleButton() {
    setState(() {
      is_favorite = !is_favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleButton,
      child: is_favorite
          ? const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : const Icon(Icons.favorite_outline),
    );
  }
}
