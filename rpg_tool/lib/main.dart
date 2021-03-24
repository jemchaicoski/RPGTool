import 'package:flutter/material.dart';
import 'package:rpg_tool/widget/NavegationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text('Compêndio Errante'),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage('images/icons/dragon-head.png'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavegationBar(),
    );
  }
}
