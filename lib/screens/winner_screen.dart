import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/constants.dart';
import 'package:tictactoe/screens/game_screen.dart';
import 'package:tictactoe/screens/welcome_screen.dart';

class WinnerScreen extends StatelessWidget {
  static const String id = 'winner_screen';

  const WinnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final winner = ModalRoute.of(context)?.settings.arguments as String?;
    final isDraw = (winner == "Draw");

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [kColor1, kShadowColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _winnerMessage(isDraw, winner),
              const SizedBox(height: 100),
              _actionButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _winnerMessage(bool isDraw, String? winner) {
    return Center(
      child: isDraw
          ? Text(
              "Draw 😔",
              style: GoogleFonts.baloo2(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            )
          : RichText(
              text: TextSpan(
                style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "$winner",
                    style: TextStyle(
                      fontSize: 70,
                      color: winner == "X" ? kColor2 : kColor3,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const TextSpan(
                    text: " Wins!!",
                    style: TextStyle(color: Colors.white60, fontSize: 60),
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
            context,
            ModalRoute.withName(WelcomeScreen.id),
          ),
        ),
        const SizedBox(width: 40),
        _NavigationButton(
          icon: Icons.refresh_rounded,
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              GameScreen.id,
              ModalRoute.withName(WelcomeScreen.id),
            );
          },
        ),
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
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: kButtonStyle,
      onPressed: onTap,
      child: Icon(
        icon,
        color: Colors.white60,
        size: 40,
      ),
    );
  }
}
