import 'package:flutter/material.dart';
import 'package:rpg_tool/AppLocalization.dart';
import 'package:rpg_tool/utils/RandomText.dart';
import 'package:rpg_tool/widget/NavegationBar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFBF2D4)),
      supportedLocales: [
        //const Locale('en'),
        const Locale('pt'),
      ],
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
  final RandomText randomText = RandomText();
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

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
            Text(AppLocalizations.of(context).translate("phrase1"))
          ],
        ),
      ),
      bottomNavigationBar: NavegationBar(),
    );
  }
}
