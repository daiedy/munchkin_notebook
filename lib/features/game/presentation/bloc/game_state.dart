part of 'game_bloc.dart';

@immutable
abstract class GameState {}

class GameNotReady extends GameState {}

class GameCreated extends GameState {
  GameCreated(this.game);

  final Game game;
}
