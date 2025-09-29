import 'package:flutter/material.dart';
import 'package:monster_combat/views/game_page.dart';

class MonsterCombat extends StatelessWidget {
  const MonsterCombat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GamePage(),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
        useMaterial3: false,
      ),
    );
  }
}
