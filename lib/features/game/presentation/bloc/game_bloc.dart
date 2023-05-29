import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/gender.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/game.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  Game? game;

  GameBloc() : super(GameNotReady()) {
    on<GameEvent>((event, emit) {
      if (event is CreateGame) {
        game = Game(maxLevel: event.maxLevel, selfCounting: event.selfCounting);
        emit(EmptyGame(game!));
      } else if (event is AddPlayer) {
        game!.addPlayer(
            Player(name: event.name, gender: event.gender, color: event.color));
        emit(game!.getPlayers.length > 1
            ? GameCreated(game!)
            : EmptyGame(game!));
      }
    });
  }
}
