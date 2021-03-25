import 'package:flutter/material.dart';
import 'package:rpg_tool/AppLocalization.dart';
import 'dart:math';
import 'package:rpg_tool/widget/NavegationBar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFBF2D4)),
      supportedLocales: [Locale('pt', 'BR'), Locale('en', 'US')],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
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
            Text(getRandomText(context))
          ],
        ),
      ),
      bottomNavigationBar: NavegationBar(),
    );
  }
}

String getRandomText(BuildContext context) {
  List<String> phraseList = new List(15);
  String phrase;
  for (int i = 0; i < phraseList.length; i++) {
    phrase = "phrase" + i.toString();
    print(AppLocalizations.of(context).translate(phrase));
    phraseList[i] = AppLocalizations.of(context).translate(phrase);
  }

  var rng = new Random();
  var generatedNumber;
  generatedNumber = rng.nextInt(phraseList.length);
  log(phraseList.length);
  return phraseList[generatedNumber];
}
