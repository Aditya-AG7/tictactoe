import 'package:flutter/material.dart';
import 'package:tictactoe/screens/game_screen.dart';
import 'package:tictactoe/screens/welcome_screen.dart';
import 'package:tictactoe/screens/winner_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        GameScreen.id: (context) => const GameScreen(),
        WinnerScreen.id: (context) => const WinnerScreen(),
      },
    );
  }
}
