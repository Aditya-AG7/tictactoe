# Tic Tac Toe

## Overview

Welcome to **Tic Tac Toe**, my first Flutter project! This application marks the beginning of my journey into app development. I chose to build this project as a stepping stone to understanding the fundamentals of Flutter, user interaction, and state management. It’s a simple yet engaging game that demonstrates the power of Flutter in creating intuitive and responsive user interfaces.

---

## Project Description

**Tic Tac Toe** is a two-player game where participants alternate turns to mark spaces in a 3x3 grid. The objective is to align three of their symbols ("X" or "O") in a row, column, or diagonal. The game handles user interactions, checks for winners, and manages navigation between screens.

---

## Key Features

### **Interactive Gameplay**
- Two players take turns marking the grid.
- Real-time visual feedback indicates the current player's turn.

### **Winner and Draw Detection**
- Automatic detection of winning combinations.
- Declares a draw when the grid is fully occupied without a winner.

### **Screen Navigation**
- **Welcome Screen**: A simple interface to start the game.
- **Game Screen**: The main gameplay interface with a 3x3 grid.
- **Winner Screen**: Displays the result (winner or draw) with options to restart or return to the welcome screen.

### **Modern UI Design**
- Custom color schemes for player symbols.
- Clean, responsive layout for an optimal user experience across devices.

---

## Screens Overview

### **Welcome Screen**
- A minimalistic screen with a "PLAY" button to start the game.

### **Game Screen**
- Displays a 3x3 grid for gameplay.
- Highlights the current player's turn with dynamic color coding.

### **Winner Screen**
- Announces the winner or a draw.
- Provides buttons to restart the game or navigate back to the welcome screen.

---

## Technologies Used

- **Flutter**: For cross-platform app development.
- **Dart**: Programming language used with Flutter.

---

## How It Works

1. **Start the Game**:
    - Tap the "PLAY" button on the Welcome Screen to navigate to the Game Screen.

2. **Gameplay**:
    - Players take turns tapping on an empty cell in the grid to place their symbol ("X" or "O").

3. **Check for Results**:
    - The game checks for a winner after every move.
    - If the grid is fully occupied and no winner is found, the game declares a draw.

4. **Result Screen**:
    - Displays the winner or a draw message.
    - Provides options to restart or return to the welcome screen.

---

## What I Learned

- **Flutter Widgets**: How to structure a project using Stateless and Stateful widgets.
- **State Management**: Dynamically updating UI elements based on game state.
- **Grid Layouts**: Using `GridView` to create a responsive 3x3 grid.
- **Navigation**: Managing screen transitions using Flutter’s navigation APIs.
- **UI Design**: Implementing custom styles for buttons, text, and containers.

---

## Future Improvements

- Add an **AI Mode** for single-player gameplay.
- Include **animations** for smoother transitions and enhanced visual feedback.
- Implement **player stats tracking** to record wins and losses.
