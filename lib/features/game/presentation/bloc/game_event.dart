part of 'game_bloc.dart';

@immutable
abstract class GameEvent {}

class CreateGame extends GameEvent {
  final int maxLevel;
  final bool selfCounting;

  CreateGame(this.maxLevel, this.selfCounting);
}
