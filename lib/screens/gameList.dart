import 'package:dartsdrill/components/GameList/GameButton.dart';
import 'package:dartsdrill/models/Game.dart';
import 'package:dartsdrill/models/games/AroundTheWorldGame.dart';
import 'package:dartsdrill/models/games/Survive61.dart';
import 'package:flutter/material.dart';

class GameListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainingsspiel starten'),
        brightness: Brightness.dark,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        childAspectRatio: _getChildAspectRatio(MediaQuery.of(context).size.width),
        children: <Widget>[for (Game game in _getGames()) GameButton(game)],
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

  List<Game> _getGames() {
    return [AroundTheWorldGame(), Survive61()];
  }
}
