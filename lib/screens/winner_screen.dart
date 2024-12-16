import 'package:flutter/material.dart';
import 'package:tictactoe/constants.dart';
import 'package:tictactoe/screens/game_screen.dart';
import 'package:tictactoe/screens/welcome_screen.dart';

class WinnerScreen extends StatelessWidget {
  static const String id = 'winner_screen';

  const WinnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final winner = ModalRoute.of(context)?.settings.arguments as String?;
    final isDraw = winner == null;

    return Scaffold(
      backgroundColor: kColor1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _winnerMessage(isDraw, winner),
          const SizedBox(height: 100),
          _actionButtons(context),
        ],
      ),
    );
  }

  Widget _winnerMessage(bool isDraw, String? winner) {
    return Center(
      child: isDraw
          ? const Text(
              "Draw 😔",
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            )
          : RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "$winner",
                    style: TextStyle(
                      color: winner == "X" ? kColor2 : kColor3,
                    ),
                  ),
                  const TextSpan(
                    text: " Wins!!",
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _actionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _NavigationButton(
          icon: Icons.home,
          onTap: () => Navigator.popUntil(
              context, ModalRoute.withName(WelcomeScreen.id)),
        ),
        const SizedBox(width: 40),
        _NavigationButton(
          icon: Icons.refresh_rounded,
          onTap: () => Navigator.pushReplacementNamed(context, GameScreen.id),
        )
      ],
    );
  }
}

class _NavigationButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _NavigationButton({
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white60,
      minWidth: 40,
      height: 70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onTap,
      child: Icon(
        icon,
        color: kColor1,
        size: 40,
      ),
    );
  }
}
