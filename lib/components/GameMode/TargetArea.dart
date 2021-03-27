import 'package:dartsdrill/components/GameMode/LastTargetArea.dart';
import 'package:dartsdrill/components/GameMode/NextTargetArea.dart';
import 'package:dartsdrill/models/Game.dart';
import 'package:flutter/material.dart';

class TargetArea extends StatelessWidget {
  final Game game;
  TargetArea(this.game);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: NextTargetArea(game),
            flex: 5,
          ),
          Expanded(
            child: LastTargetArea(game),
            flex: 5,
          ),
        ],
      ),
    );
  }
}
