import 'package:dartsdrill/models/Game.dart';
import 'package:flutter/material.dart';

class GameSummaryScreen extends StatelessWidget {
  final Game game;
  GameSummaryScreen(this.game);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainingsspiel absolviert'),
        brightness: Brightness.dark,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  child: Text(
                    game.name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
                Container(
                  child: Text(
                    game.getStatStringTMP(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Text('tbd Stats'),
            flex: 1,
          ),
          Container(
            child: ElevatedButton(
              child: Text(
                'Abschließen',
              ),
              onPressed: () => Navigator.pop(context),
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 10, 40),
          ),
        ],
      ),
    );
  }
}
