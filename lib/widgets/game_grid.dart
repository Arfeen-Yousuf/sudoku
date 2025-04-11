import 'package:flutter/material.dart';

import 'game_cell.dart';

class GameGrid extends StatelessWidget {
  GameGrid({super.key});

  //TODO: fetch this from a file
  final List<List<int?>> board = [
    [5, 3, null, null, 7, null, null, null, null],
    [6, null, null, 1, 9, 5, null, null, null],
    [null, 9, 8, null, null, null, null, 6, null],
    [8, null, null, null, 6, null, null, null, 3],
    [4, null, null, 8, null, 3, null, null, 1],
    [7, null, null, null, 2, null, null, null, 6],
    [null, 6, null, null, null, null, 2, 8, null],
    [null, null, null, 4, 1, 9, null, null, 5],
    [null, null, null, null, 8, null, null, 7, 9],
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          height: constraints.maxWidth,
          //Making a grid with 9 columns and 9 rows
          child: GridView.count(
            crossAxisCount: 9,
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), //Disable user scrolling. Keeps the game board intact
            children: List.generate(81, (index) {
              final row = index ~/ 9;
              final column = index % 9;

              return GameCell(
                number: board[row][column],
                row: row,
                column: column,
                foregroundColor: Colors.black,
                backgroundColor: Colors.transparent,
              );
            }),
          ),
        );
      },
    );
  }
}
