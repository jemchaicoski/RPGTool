import 'dart:math';

import 'package:flutter/material.dart';

import 'package:rpg_tool/AppLocalization.dart';

class RandomText {
  RandomText();

  String getRandomText(BuildContext context) {
    List<String> phraseList = [];
    String phrase;

    for (int i = 0; i <= 14; i++) {
      phrase = "phrase" + i.toString();
      phraseList.add(AppLocalizations.of(context).translate(phrase));
    }

    var rng = new Random();
    var generatedNumber;
    generatedNumber = rng.nextInt(phraseList.length);
    log(phraseList.length);

    return phraseList[generatedNumber];
  }
}
