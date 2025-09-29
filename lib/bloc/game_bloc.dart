import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monster_combat/bloc/game_event.dart';
import 'package:monster_combat/bloc/game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState()) {}

  final math.Random _random = math.Random();
  int _getRandom(int min, int max) => min + _random.nextInt(max - min + 1);
}
