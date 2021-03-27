import 'package:dartsdrill/models/Game.dart';
import 'package:flutter/material.dart';

class StatsFooter extends StatelessWidget {
  final Game game;
  final double height;
  StatsFooter(this.game, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('tbd'),
      height: height,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
    );
  }
}
