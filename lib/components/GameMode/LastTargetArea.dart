import 'package:dartsdrill/models/Game.dart';
import 'package:flutter/material.dart';

class LastTargetArea extends StatelessWidget {
  final Game game;
  LastTargetArea(this.game);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Text(
            game.getLastTargetText(),
            style: Theme.of(context).textTheme.subtitle1,
          ),
        )),
      ],
    );
  }
}
