import 'package:dartsdrill/components/GameList/GameButton.dart';
import 'package:dartsdrill/models/Game.dart';
import 'package:dartsdrill/models/games/AroundTheWorld.dart';
import 'package:dartsdrill/models/games/Bobs27.dart';
import 'package:dartsdrill/models/games/Survive61.dart';
import 'package:dartsdrill/services/localizations.dart';
import 'package:flutter/material.dart';

class GameListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('GameMode', 'startTraininggame')),
        brightness: Brightness.dark,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        childAspectRatio: _getChildAspectRatio(MediaQuery.of(context).size.width),
        children: <Widget>[for (Game game in _getGames(localizations)) GameButton(game)],
      ),
    );
  }

  double _getChildAspectRatio(double _screenWidth) {
    int _crossAxisSpacing = 8;
    int _crossAxisCount = 2;
    double _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) / _crossAxisCount;
    int cellHeight = 60;
    return _width / cellHeight;
  }

  List<Game> _getGames(AppLocalizations localizations) {
    return [
      AroundTheWorld(localizations),
      Survive61(localizations),
      Bobs27(localizations),
    ];
  }
}
