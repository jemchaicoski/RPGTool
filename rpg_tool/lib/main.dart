import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rpg_tool/widget/NavegationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFBF2D4)),
    );
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
            Text(getRandomText())
          ],
        ),
      ),
      bottomNavigationBar: NavegationBar(),
    );
  }
}

String getRandomText() {
  String phrase1 = "Das piores histórias saem as grandes ideias.";
  String phrase2 =
      "Difícil é vida de vilão, que só aparece para morrer no final.";
  String phrase3 =
      "Ora, mas é só um goblin.\n -Frases ditas antes de morrer n°1";
  String phrase4 = "Como assim critico?\n -Frases ditas antes de morrer n°2";
  String phrase5 =
      "Ufa, passei no reflexo, agora é só metade do dano.\n -Frases ditas antes de morrer n°3";
  String phrase6 =
      "Se eu morrer eu faço um mago.\n -Frases ditas antes de morrer n°4";

  List<String> phraseList = new List(5);
  phraseList[0] = phrase1;
  phraseList[1] = phrase2;
  phraseList[2] = phrase3;
  phraseList[3] = phrase4;
  phraseList[4] = phrase5;

  var rng = new Random();
  var generatedNumber;
  generatedNumber = rng.nextInt(4);

  return phraseList[generatedNumber];
}
