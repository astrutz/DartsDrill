import 'package:dartsdrill/models/Game.dart';
import 'package:flutter/material.dart';

class NextTargetArea extends StatelessWidget {
  final Game game;
  NextTargetArea(this.game);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Align(
            child: Text(
              'Nächstes Ziel',
              style: Theme.of(context).textTheme.headline6,
            ),
            alignment: Alignment.center,
          ),
          flex: 5,
        ),
        Expanded(
          child: Text(
            game.getNextTargetText(),
            style: Theme.of(context).textTheme.headline5,
          ),
          flex: 5,
        ),
        Expanded(
          child: Text(
            game.getAlternativeText(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          flex: 5,
        ),
      ],
    );
  }
}
