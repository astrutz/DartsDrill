import 'package:dartsdrill/models/Answer.dart';
import 'package:dartsdrill/models/Game.dart';
import 'package:flutter/material.dart';

class AnswerArea extends StatelessWidget {
  final Function onAnswerHandler;
  final Game game;
  final double appBarHeight;
  AnswerArea(this.onAnswerHandler, this.game, this.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: new NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      childAspectRatio: _getChildAspectRatio(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      children: <Widget>[
        for (Answer answer in game.answers)
          Container(
            child: ElevatedButton(
              child: Text(
                answer.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Color(0xFFFFFFFF),
                    ),
              ),
              onPressed: answer.enabled
                  ? () {
                      onAnswerHandler(answer);
                    }
                  : null,
            ),
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            height: 300,
          ),
      ],
    );
  }

  double _getChildAspectRatio(double _screenWidth, double _screenHeight) {
    int _crossAxisSpacing = 8;
    int _crossAxisCount = 2;
    double _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) / _crossAxisCount;
    double cellHeight = (_screenHeight - appBarHeight * 2 - (_screenHeight / 17)) / 4 - 10;
    return _width / cellHeight;
  }
}
