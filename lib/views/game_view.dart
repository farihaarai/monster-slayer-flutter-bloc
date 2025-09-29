import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monster_combat/bloc/game_bloc.dart';
import 'package:monster_combat/bloc/game_state.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("⚔ Monster Slayer"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            var bloc = BlocProvider.of<GameBloc>(context);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 5,
                  color: Colors.red[50],
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Text(
                          "👹 Monster",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(height: 10),
                        LinearProgressIndicator(
                          value: 100,
                          backgroundColor: Colors.grey[300],
                          color: Colors.red,
                          minHeight: 20,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "${state.monsterHealth} %",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Winner
                if (state.winner != null)
                  Text(
                    '${state.winner} Wins 🎉',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                const SizedBox(height: 30),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 5,
                  color: Colors.blue[50],
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Text(
                          "🧑 Player",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(height: 10),
                        LinearProgressIndicator(
                          value: 100,
                          backgroundColor: Colors.grey[300],
                          color: Colors.blue,
                          minHeight: 20,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "${state.playerHealth} %",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(),

                Wrap(
                  spacing: 15,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text("Attack"),
                      icon: const Icon(Icons.sports_martial_arts),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                      ),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text("Special Attack"),
                      icon: const Icon(Icons.flash_on),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                      ),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text("Heal"),
                      icon: const Icon(Icons.healing),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                      ),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        state.disabledButtons ? "Reset" : "Surrender",
                      ),
                      icon: Icon(
                        state.disabledButtons ? Icons.refresh : Icons.flag,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
