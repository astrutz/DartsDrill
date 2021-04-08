import 'package:dartsdrill/models/Plan.dart';
import 'package:flutter/material.dart';

class PlanSummaryScreen extends StatelessWidget {
  final Plan _plan;
  PlanSummaryScreen(this._plan);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainingsplan absolviert'),
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
                    _plan.name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
                Container(
                  child: Text(
                    _plan.getStatStringTMP(),
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
              onPressed: () {
                _plan.resetGames();
                Navigator.pop(context);
              },
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 10, 40),
          ),
        ],
      ),
    );
  }
}
