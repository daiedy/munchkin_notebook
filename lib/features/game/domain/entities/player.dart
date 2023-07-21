import 'package:flutter/material.dart';

class Player {
  Player(
      {required this.name,
      required this.gender,
      required this.color,
      this.bonus = 0,
      this.level = 1,
      required this.id});

  final String name;
  final Gender gender;
  final Color color;
  final int bonus;
  final int level;
  final int id;

  int get strength => level + bonus;

  Player copyWith({
    String? name,
    Gender? gender,
    int? bonus,
    int? level,
  }) =>
      Player(
        name: name ?? this.name,
        gender: gender ?? this.gender,
        color: color,
        bonus: bonus ?? this.bonus,
        level: level ?? this.level,
        id: id,
      );
}

enum Gender { male, female }
