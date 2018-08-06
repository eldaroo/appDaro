import 'package:flutter/material.dart';
import 'screens/BarList_Screen.dart';
import 'screens/Login_Screen.dart';

class App extends StatelessWidget{
Widget build(context) {
  return MaterialApp(
      home: Scaffold(
        body: LoginScreen(),
        appBar: AppBar(
          title: Text('BeerNow'),
        ),
      )
  );
}
}