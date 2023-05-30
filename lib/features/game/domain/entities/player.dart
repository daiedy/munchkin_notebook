import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/gender.dart';

class Player {
  Player({required this.name, required this.gender, required this.color});

  String name;
  Gender gender;
  Color color;
  int _bonus = 0;
  int _level = 1;

  void decrementLevel() {
    if (_level > 0) _level--;
  }

  void incrementLevel() {
    _level++;
  }

  void decrementBonus() {
    if (_bonus > 0) _bonus--;
  }

  void incrementBonus() {
    _bonus++;
  }

  int get level => _level;
  int get bonus => _bonus;
  int get strength => level + bonus;
}
