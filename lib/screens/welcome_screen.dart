import 'package:flutter/material.dart';
import 'package:tictactoe/constants.dart';
import 'package:tictactoe/screens/game_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColor1,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [kColor1, kShadowColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage('images/tictactoe-logo.jpeg'),
                      semanticLabel: 'Tic Tac Toe Logo',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 150),
                const PlayButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: kButtonStyle,
      onPressed: () {
        Navigator.pushNamed(context, GameScreen.id);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'PLAY',
            style: kPlayButtonTextStyle,
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.arrow_forward_ios,
            size: 40,
            color: kColor3,
          ),
        ],
      ),
    );
  }
}
