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
