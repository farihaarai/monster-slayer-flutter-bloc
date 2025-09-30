import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monster_combat/bloc/game_event.dart';
import 'package:monster_combat/bloc/game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState()) {
    on<AttackMonster>(_onAttackMonsterEvent);
    on<AttackPlayer>(_onAttackPlayerEvent);
    on<SpecialAttack>(_onSpecialAttackEvent);
    on<Heal>(_onHealEvent);
    on<Reset>(_onResetEvent);
  }

  final math.Random _random = math.Random();
  int _getRandom(int min, int max) => min + _random.nextInt(max - min + 1);

  void _onAttackMonsterEvent(AttackMonster event, Emitter<GameState> emit) {
    if (state.playerHealth > 0) {
      int damage = _getRandom(5, 10);
      int newMonsterHealth = math.max(state.monsterHealth - damage, 0);
      GameState newState = state.copyWith(
        monsterHealth: newMonsterHealth,
        attackCount: state.attackCount + 1,
      );
      emit(newState);
      add(AttackPlayer());
    }
  }

  void _onAttackPlayerEvent(AttackPlayer event, Emitter<GameState> emit) {
    if (state.monsterHealth > 0) {
      int damage = _getRandom(8, 12);
      int newPlayerHealth = math.max(state.playerHealth - damage, 0);
      GameState newState = state.copyWith(playerHealth: newPlayerHealth);
      emit(newState);
    }
  }

  void _onSpecialAttackEvent(SpecialAttack event, Emitter<GameState> emit) {
    if (state.monsterHealth > 0) {
      int damage = _getRandom(10, 15);
      int newMonsterHealth = math.max(state.monsterHealth - damage, 0);
      GameState newState = state.copyWith(
        attackCount: 0,
        monsterHealth: newMonsterHealth,
      );
      emit(newState);
      add(AttackPlayer());
    }
  }

  void _onHealEvent(Heal event, Emitter<GameState> emit) {
    int repair = _getRandom(8, 15);
    int newPlayerHealth = math.min(state.playerHealth + repair, 100);
    GameState newState = state.copyWith(
      playerHealth: newPlayerHealth,
      attackCount: 0,
    );
    emit(newState);
    add(AttackPlayer());
  }

  void _onResetEvent(Reset event, Emitter<GameState> emit) {
    GameState newState = state.copyWith(
      playerHealth: 100,
      monsterHealth: 100,
      attackCount: 0,
    );
    emit(newState);
  }
}
