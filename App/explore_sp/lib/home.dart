import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeStates();
  }
}

class HomeStates extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF585454),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ]
      ),
      drawer: NavDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 250,
                      margin: EdgeInsets.only(top: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF929292),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "EXEMPLOEXEMPLO",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(
                              Icons.favorite,
                            ),
                          ),
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
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 250,
                      margin: EdgeInsets.only(top: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF929292),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "EXEMPLOEXEMPLO",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(
                              Icons.favorite,
                            ),
                          ),
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
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 250,
                      margin: EdgeInsets.only(top: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF929292),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "EXEMPLOEXEMPLO",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(
                              Icons.favorite,
                            ),
                          ),
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
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 250,
                      margin: EdgeInsets.only(top: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF929292),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "EXEMPLOEXEMPLO",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(
                              Icons.favorite,
                            ),
                          ),
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
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 250,
                      margin: EdgeInsets.only(top: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF929292),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "EXEMPLOEXEMPLO",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(
                              Icons.favorite,
                            ),
                          ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 30,
            height: 90,
            color: Color(0xFF585454),
            child: Center(
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
              child: Text(
                'Favoritos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xFF585454)
                ),
              ),
            ),
          ),
        ],
      )
    ),
  );
}