import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/gender.dart';

class Player {
  Player({required this.name, required this.gender, required this.color});

  String name;
  Gender gender;
  Color color;
  int bonus = 0;
  int level = 1;

  int get strength => level + bonus;
}
