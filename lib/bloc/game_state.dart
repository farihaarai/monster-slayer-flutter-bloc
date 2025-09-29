import 'package:equatable/equatable.dart';
// import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'game_state.g.dart';

// @JsonSerializable()
@CopyWith()
class GameState extends Equatable {
  final int monsterHealth;
  final int playerHealth;
  final int attackCount;

  const GameState({
    this.monsterHealth = 100,
    this.playerHealth = 100,
    this.attackCount = 0,
  });
  String? get winner {
    if (monsterHealth <= 0) return "Player";
    if (playerHealth <= 0) return "Monster";
    return null;
  }

  bool get disabledButtons {
    if (winner != null) return true;
    return false;
  }

  @override
  List<Object?> get props => [monsterHealth, playerHealth, attackCount];
}
