import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/game.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  Game? game;

  GameBloc() : super(GameNotReady()) {
    on<GameEvent>((event, emit) {
      if (event is CreateGame) {
        game = Game(maxLevel: event.maxLevel, selfCounting: event.selfCounting);
        emit(GameCreated(game!));
      }
    });
  }
}
