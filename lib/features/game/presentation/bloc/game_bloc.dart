import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/game.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  Game? _game;

  GameBloc() : super(GameNotReady()) {
    on<GameEvent>((event, emit) {
      if (event is CreateGame) {
        _game =
            Game(maxLevel: event.maxLevel, selfCounting: event.selfCounting);
        emit(GameCreated(_game!));
      } else if (event is AddPlayer) {
        _game = _game!.addPlayer(Player(
            name: event.name,
            gender: event.gender,
            color: event.color,
            id: _game!.getPlayers.length + 1));
        emit(GameCreated(_game!));
      } else if (event is ChangePlayerLevel) {
        if (event.level > 1 && event.level < _game!.maxLevel) {
          _game = _game!.changePlayer(
            playerId: event.playerId,
            level: event.level,
          );
          emit(GameCreated(_game!));
        }
      } else if (event is ChangePlayerBonus) {
        _game = _game!.changePlayer(
          playerId: event.playerId,
          bonus: event.bonus,
        );
        emit(GameCreated(_game!));
      }
    });
  }
}
