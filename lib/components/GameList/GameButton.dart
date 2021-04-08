import 'package:dartsdrill/models/Game.dart';
import 'package:dartsdrill/screens/GameStart.dart';
import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  final Game _game;
  GameButton(this._game);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(
          _game.name,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Color(0xFFFFFFFF),
              ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return GameStartScreen(_game, null);
            }),
          );
        },
      ),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
    );
  }
}
