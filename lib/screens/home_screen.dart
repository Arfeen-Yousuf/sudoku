import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final continueButton = FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
        minimumSize: Size.fromHeight(60),
        textStyle: textTheme.labelLarge?.copyWith(fontSize: 16),
      ),
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

    final newGameButton = FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
        minimumSize: Size.fromHeight(60),
        textStyle: textTheme.labelLarge?.copyWith(fontSize: 16),
      ),
      child: Text('New Game'),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                style: TextTheme.of(context).headlineMedium,
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
}
