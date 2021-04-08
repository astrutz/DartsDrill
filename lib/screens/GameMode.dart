import 'package:dartsdrill/components/GameMode/AnswerArea.dart';
import 'package:dartsdrill/components/GameMode/TargetArea.dart';
import 'package:dartsdrill/components/GameMode/StatsArea.dart';
import 'package:dartsdrill/models/Answer.dart';
import 'package:dartsdrill/models/Game.dart';
import 'package:dartsdrill/models/Plan.dart';
import 'package:dartsdrill/screens/GameStart.dart';
import 'package:dartsdrill/screens/PlanSummary.dart';
import 'package:flutter/material.dart';

import 'GameSummary.dart';

class GameMode extends StatefulWidget {
  final Game game;
  final Plan? _plan;
  GameMode(this.game, this._plan) {
    game.start();
  }
  @override
  _GameModeState createState() => _GameModeState();
}

class _GameModeState extends State<GameMode> {
  void _registerThrow(Answer answer) {
    setState(() {
      widget.game.registerThrow(answer);
    });
  }

  void _resetThrow() {
    setState(() {
      widget.game.resetThrow();
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      handleGameEnd(widget, context);
    });
    final AlertDialog dialog = _getDialog();
    final AppBar appBar = getAppBar(_resetThrow, widget, context, dialog);
    double appBarHeight = appBar.preferredSize.height;
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        appBar: appBar,
        body: Column(
          children: <Widget>[
            Expanded(
              child: TargetArea(widget.game),
              flex: 8,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  widget.game.question,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: AnswerArea(_registerThrow, widget.game, appBarHeight),
              flex: 8,
            ),
            StatsArea(widget.game, appBarHeight),
          ],
        ),
      ),
    );
  }

  AlertDialog _getDialog() => AlertDialog(
        title: Text('Trainingsspiel abbrechen'),
        content: Text('Willst du dieses Spiel wirklich abbrechen? Dein Fortschritt wird nicht gespeichert.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Nein'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Text('Ja'),
          ),
        ],
      );
}

AppBar getAppBar(Function _resetThrow, GameMode widget, BuildContext context, AlertDialog dialog) => AppBar(
      title: Text(widget.game.name),
      brightness: Brightness.dark,
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings_backup_restore),
          tooltip: 'Letzten Wurf zurücksetzen',
          onPressed: () {
            _resetThrow();
          },
        ),
        IconButton(
          icon: const Icon(Icons.help_outline),
          tooltip: 'Hilfe',
          onPressed: () {
            print('tbd');
          },
        ),
        IconButton(
          icon: const Icon(Icons.cancel_outlined),
          tooltip: 'Spiel abbrechen',
          onPressed: () {
            showDialog<void>(context: context, builder: (context) => dialog);
          },
        )
      ],
    );

void handleGameEnd(GameMode widget, BuildContext context) {
  late MaterialPageRoute _route;
  if (widget.game.isFinished) {
    if (widget._plan != null) {
      if (widget._plan!.games.length - 1 == widget._plan!.currentGameIndex) {
        _route = MaterialPageRoute(builder: (context) {
          return PlanSummaryScreen(widget._plan ?? Plan());
        });
      } else {
        widget._plan!.incrementIndex();
        _route = MaterialPageRoute(builder: (context) {
          return GameStartScreen(widget._plan!.games[widget._plan!.currentGameIndex], widget._plan);
        });
      }
    } else {
      _route = MaterialPageRoute(builder: (context) {
        return GameSummaryScreen(widget.game);
      });
    }
    // Navigator.pop(context);
    Navigator.pop(context);
    Navigator.push(
      context,
      _route,
    );
  }
}
