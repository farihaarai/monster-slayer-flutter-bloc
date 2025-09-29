import 'package:equatable/equatable.dart';

abstract class GameEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AttackMonster extends GameEvent {}

class AttackPlayer extends GameEvent {}

class SpecialAttack extends GameEvent {}

class Heal extends GameEvent {}

class Reset extends GameEvent {}
