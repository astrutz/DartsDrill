import 'package:dartsdrill/models/Game.dart';
import 'package:dartsdrill/models/Plan.dart';
import 'package:dartsdrill/screens/GameMode.dart';
import 'package:dartsdrill/services/localizations.dart';
import 'package:flutter/material.dart';

class GameStartScreen extends StatelessWidget {
  final Game _game;
  final Plan? _plan;
  GameStartScreen(this._game, this._plan);
  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_game.name),
        brightness: Brightness.dark,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: localizations.translate('General', 'settings'),
            onPressed: () {
              // TODO
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  child: Text(
                    _game.name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
                Container(
                  child: Text(
                    _game.description,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Container(
                  child: Text(
                    _game.metaText,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                ),
              ],
            ),
            flex: 1,
          ),
          Container(
            child: ElevatedButton(
              child: Text(
                localizations.translate('General', 'start'),
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return GameMode(_game, _plan);
                  }),
                );
              },
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 10, 40),
          ),
        ],
      ),
    );
  }
}
