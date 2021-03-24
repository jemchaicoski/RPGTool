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

/*

floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.person)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


child: Container(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(icon, size: 40.0, color: Colors.white),
                SizedBox.shrink(),
                Icon(Icons.topic, size: 40.0, color: Colors.white),
              ],
            ),
          ),
        ),
*/
