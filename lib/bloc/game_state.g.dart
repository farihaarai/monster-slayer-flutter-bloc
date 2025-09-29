// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GameStateCWProxy {
  GameState monsterHealth(int monsterHealth);

  GameState playerHealth(int playerHealth);

  GameState attackCount(int attackCount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GameState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GameState(...).copyWith(id: 12, name: "My name")
  /// ```
  GameState call({int monsterHealth, int playerHealth, int attackCount});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGameState.copyWith(...)` or call `instanceOfGameState.copyWith.fieldName(value)` for a single field.
class _$GameStateCWProxyImpl implements _$GameStateCWProxy {
  const _$GameStateCWProxyImpl(this._value);

  final GameState _value;

  @override
  GameState monsterHealth(int monsterHealth) =>
      call(monsterHealth: monsterHealth);

  @override
  GameState playerHealth(int playerHealth) => call(playerHealth: playerHealth);

  @override
  GameState attackCount(int attackCount) => call(attackCount: attackCount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GameState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GameState(...).copyWith(id: 12, name: "My name")
  /// ```
  GameState call({
    Object? monsterHealth = const $CopyWithPlaceholder(),
    Object? playerHealth = const $CopyWithPlaceholder(),
    Object? attackCount = const $CopyWithPlaceholder(),
  }) {
    return GameState(
      monsterHealth:
          monsterHealth == const $CopyWithPlaceholder() || monsterHealth == null
          ? _value.monsterHealth
          // ignore: cast_nullable_to_non_nullable
          : monsterHealth as int,
      playerHealth:
          playerHealth == const $CopyWithPlaceholder() || playerHealth == null
          ? _value.playerHealth
          // ignore: cast_nullable_to_non_nullable
          : playerHealth as int,
      attackCount:
          attackCount == const $CopyWithPlaceholder() || attackCount == null
          ? _value.attackCount
          // ignore: cast_nullable_to_non_nullable
          : attackCount as int,
    );
  }
}

extension $GameStateCopyWith on GameState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGameState.copyWith(...)` or `instanceOfGameState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GameStateCWProxy get copyWith => _$GameStateCWProxyImpl(this);
}
