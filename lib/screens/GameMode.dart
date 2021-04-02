import 'package:dartsdrill/components/GameMode/AnswerArea.dart';
import 'package:dartsdrill/components/GameMode/TargetArea.dart';
import 'package:dartsdrill/components/GameMode/StatsArea.dart';
import 'package:dartsdrill/models/Answer.dart';
import 'package:dartsdrill/models/Game.dart';
import 'package:flutter/material.dart';

class GameMode extends StatefulWidget {
  final Game game;
  GameMode(this.game) {
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
      if (widget.game.isFinished) {
        Navigator.pop(context);
      }
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
            StatsArea(widget.game, appBarHeight)
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
