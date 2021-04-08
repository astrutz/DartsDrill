import 'package:dartsdrill/models/Plan.dart';
import 'package:dartsdrill/screens/PlanStart.dart';
import 'package:dartsdrill/models/plans/ProWarmup.dart';
import 'package:flutter/material.dart';

class PlanListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meine Trainingspläne'),
        brightness: Brightness.dark,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Plan hinzufügen',
            onPressed: () {
              print('tbd'); // TODO
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (Plan plan in _getPlans())
            Column(
              children: [
                ListTile(
                  title: Text(plan.name),
                  subtitle: Text(plan.description),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return PlanStartScreen(plan);
                      }),
                    );
                  },
                ),
                Divider(),
              ],
            )
        ],
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      ),
    );
  }
}

List<Plan> _getPlans() {
  return [ProWarmup(), ProWarmup(), ProWarmup()]; // TODO
}
