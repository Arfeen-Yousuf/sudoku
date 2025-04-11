import 'package:flutter/material.dart';
import 'package:sudoku/widgets/primary_button.dart';

import 'play_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Make widget variables to break the UI into smaller components

    //TODO: Create this button only if user has a continued game
    final continueButton = PrimaryButton(
      onPressed: () => _onContinuePressed(context),
      child: Column(
        children: [
          Text('Continue'),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [Icon(Icons.schedule), Text('08:36')],
          ),
        ],
      ),
    );

    final newGameButton = PrimaryButton(
      onPressed: () => _onNewGamePressed(context),
      child: Text('New Game'),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(26),
          //Column allows to layout children vertically
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Spacer takes up remaining unused space
              const Spacer(flex: 3),
              LayoutBuilder(
                builder:
                    (context, constraints) => Image.asset(
                      'assets/images/sudoku.png',
                      height: constraints.maxWidth * 0.55,
                    ),
              ),
              const Spacer(flex: 2),
              Text(
                'Sudoku',
                textAlign: TextAlign.center,
                style: TextTheme.of(context).headlineLarge,
              ),
              const Spacer(flex: 2),
              continueButton,
              const SizedBox(height: 26),
              newGameButton,
            ],
          ),
        ),
      ),
    );
  }

  void _onContinuePressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PlayScreen()),
    );
  }

  void _onNewGamePressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PlayScreen()),
    );
  }
}
