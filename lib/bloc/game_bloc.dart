import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monster_combat/bloc/game_event.dart';
import 'package:monster_combat/bloc/game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState()) {}
}
