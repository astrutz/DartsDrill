import 'package:dartsdrill/models/Game.dart';
import 'package:dartsdrill/models/Plan.dart';
import 'package:dartsdrill/screens/PlanMode.dart';
import 'package:flutter/material.dart';

class PlanStartScreen extends StatelessWidget {
  final Plan _plan;
  PlanStartScreen(this._plan);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_plan.name),
        brightness: Brightness.dark,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Einstellungen',
            onPressed: () {
              print('tbd'); // TODO
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
                    _plan.name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
                Container(
                  child: Text(
                    _plan.description,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Container(
                  child: Text(
                    _plan.metaText,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                ),
                Container(
                  child: Text(
                    'Spiele',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 40, 10, 20),
                ),
                for (Game _game in _plan.games)
                  Column(
                    children: [
                      ListTile(
                        title: Text(
                          _game.name,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        visualDensity: VisualDensity.compact,
                      ),
                      Divider(),
                    ],
                  )
              ],
            ),
            flex: 1,
          ),
          Container(
            child: ElevatedButton(
              child: Text(
                'Starten',
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PlanMode(_plan);
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
