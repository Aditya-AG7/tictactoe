import 'package:flutter/material.dart';
import 'package:tictactoe/constants.dart';
import 'package:tictactoe/screens/game_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/tictactoe-logo.jpeg'),
              semanticLabel: 'Tic Tac Toe Logo',
            ),
            SizedBox(height: 150),
            PlayButton(),
          ],
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
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'PLAY',
            style: kPlayButtonTextStyle,
          ),
          SizedBox(width: 8),
          Icon(
            Icons.arrow_forward_ios,
            size: 40,
            color: kColor3,
          ),
        ],
      ),
    );
  }
}
