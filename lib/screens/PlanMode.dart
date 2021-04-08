import 'package:dartsdrill/models/Plan.dart';
import 'package:dartsdrill/screens/GameStart.dart';
import 'package:flutter/material.dart';

class PlanMode extends StatelessWidget {
  final Plan _plan;
  PlanMode(this._plan);

  @override
  Widget build(BuildContext context) {
    return GameStartScreen(_plan.games[0], _plan);
  }
}
