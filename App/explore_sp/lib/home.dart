import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeStates();
  }
}

class HomeStates extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                  Text("Seja bem vindo, "),
                  Container(
                    width: 350,
                    height: 250,
                    margin: const EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFF929292),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 20),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          "EXEMPLOEXEMPLO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 105,
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
                    margin: const EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFF929292),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 20),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          "EXEMPLOEXEMPLO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 105,
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
                    margin: const EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFF929292),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 20),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          "EXEMPLOEXEMPLO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 105,
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
                    margin: const EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFF929292),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 20),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          "EXEMPLOEXEMPLO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 105,
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
                    margin: const EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFF929292),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 20),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          "EXEMPLOEXEMPLO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 105,
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
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Favoritos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF585454)),
                ),
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
