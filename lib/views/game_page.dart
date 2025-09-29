import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monster_combat/bloc/game_bloc.dart';
import 'package:monster_combat/views/game_view.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => GameBloc(), child: GameView());
  }
}
