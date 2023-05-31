part of 'game_bloc.dart';

@immutable
abstract class GameEvent {}

class CreateGame extends GameEvent {
  final int maxLevel;
  final bool selfCounting;

  CreateGame(this.maxLevel, this.selfCounting);
}

class AddPlayer extends GameEvent {
  final String name;
  final Gender gender;
  final Color color;

  AddPlayer({required this.name, required this.gender, required this.color});
}

class ChangePlayerLevel extends GameEvent {
  final int playerId;
  final int level;

  ChangePlayerLevel({required this.playerId, required this.level});
}

class ChangePlayerBonus extends GameEvent {
  final int playerId;
  final int bonus;

  ChangePlayerBonus({required this.playerId, required this.bonus});
}
