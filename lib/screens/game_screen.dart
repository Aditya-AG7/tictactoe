import 'package:flutter/material.dart';
import 'package:tictactoe/constants.dart';
import 'package:tictactoe/screens/winner_screen.dart';

class GameScreen extends StatefulWidget {
  static const String id = "game_screen";

  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  static const String playerX = "X";
  static const String playerY = "O";

  late String currentPlayer;
  late bool gameEnd;
  late List<String> occupied;
  late Color playerColor;
  late List<Color> boxColors;

  @override
  void initState() {
    initializeGame();
    super.initState();
  }

  void initializeGame() {
    currentPlayer = playerX;
    playerColor = kColor2;
    gameEnd = false;
    occupied = List.filled(9, "");
    boxColors = List.filled(9, Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _headerText(),
            const SizedBox(height: 35),
            _gameContainer(),
          ],
        ),
      ),
    );
  }

  void changeTurn() {
    setState(() {
      currentPlayer = (currentPlayer == playerX) ? playerY : playerX;
      playerColor = (currentPlayer == playerX) ? kColor2 : kColor3;
    });
  }

  bool checkWinner() {
    List<List<int>> winningList = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var winningPos in winningList) {
      String playerPosition0 = occupied[winningPos[0]];
      String playerPosition1 = occupied[winningPos[1]];
      String playerPosition2 = occupied[winningPos[2]];

      if (playerPosition0.isNotEmpty) {
        if (playerPosition0 == playerPosition1 &&
            playerPosition1 == playerPosition2) {
          gameEnd = true;
          Navigator.pushNamed(
            context,
            WinnerScreen.id,
            arguments: playerPosition0,
          );
          return true;
        }
      }
    }
    return false;
  }

  void checkForDraw() {
    if (!occupied.contains("") && !gameEnd) {
      gameEnd = true;
      Navigator.pushNamed(context, WinnerScreen.id, arguments: "Draw");
    }
  }

  Widget _headerText() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
        children: [
          TextSpan(
            text: currentPlayer,
            style: TextStyle(color: playerColor),
          ),
          const TextSpan(
            text: "'s turn",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _gameContainer() {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.height / 2,
      margin: const EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 9,
        itemBuilder: (context, int index) {
          return _box(index);
        },
      ),
    );
  }

  Widget _box(int index) {
    return InkWell(
      onTap: () {
        if (gameEnd || occupied[index].isNotEmpty) return;

        setState(() {
          occupied[index] = currentPlayer;
          boxColors[index] = currentPlayer == playerX ? kColor2 : kColor3;
          changeTurn();
          if (!checkWinner()) checkForDraw();
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: kColor1,
          border: Border.all(
            color: Colors.white38,
            width: 3,
          ),
        ),
        // foregroundDecoration: ,
        margin: const EdgeInsets.all(5),
        child: Center(
          child: Text(
            occupied[index],
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w500,
              color: boxColors[index],
            ),
          ),
        ),
      ),
    );
  }
}
