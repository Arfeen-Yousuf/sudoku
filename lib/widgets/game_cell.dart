import 'package:flutter/material.dart';

class GameCell extends StatelessWidget {
  const GameCell({
    super.key,
    this.number,
    required this.row,
    required this.column,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  final int? number;
  final int row, column;
  //Colors allow visual indication for errors, highlights etc
  //Will be more clear when we make UI interactive in the next week
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    late final blackBorderSide = BorderSide(color: Colors.black, width: 2);
    late final greyBorderSide = BorderSide(
      color: Colors.grey[500]!,
      width: 1.5,
    );

    late final numberText = FittedBox(
      fit: BoxFit.contain,
      //Pass the foreground color to text
      child: Text('$number', style: TextStyle(color: foregroundColor)),
    );

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        //Specify different borders to show game 3x3 regions
        border: Border(
          top: (row % 3 == 0) ? blackBorderSide : greyBorderSide,
          right: (column == 8) ? blackBorderSide : BorderSide.none,
          bottom: (row == 8) ? blackBorderSide : BorderSide.none,
          left: (column % 3 == 0) ? blackBorderSide : greyBorderSide,
        ),
      ),
      //If the cell is empty, the child is null else a text widget
      child: (number == null) ? null : numberText,
    );
  }
}
