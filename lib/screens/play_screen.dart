import 'package:flutter/material.dart';
import 'package:sudoku/widgets/game_grid.dart';
import 'package:sudoku/widgets/number_button.dart';

//TODO: Make UI interactive

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final numberButtons = Row(
      spacing: 8,
      children: List.generate(
        9,
        (index) => Expanded(child: NumberButton(number: index + 1)),
      ),
    );

    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sudoku'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.pause_circle_outline),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacer(),
              GameGrid(),
              Spacer(flex: 2),
              numberButtons,
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
