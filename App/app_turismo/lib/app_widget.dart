import 'package:app_turismo/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}