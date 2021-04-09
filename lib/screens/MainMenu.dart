import 'package:dartsdrill/screens/PlanList.dart';
import 'package:dartsdrill/services/localizations.dart';
import 'package:flutter/material.dart';
import 'GameList.dart';
import '../components/MainMenu/MenuButton.dart';

class MainMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context);
    List<Map> screens = getScreens(localizations);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: localizations.translate('General', 'login'),
            onPressed: () {
              // TODO
            },
          )
        ],
        title: Text('DartsDrill'),
        brightness: Brightness.dark,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
        children: <Widget>[
          for (Map i in screens)
            MenuButton(
                buttonText: i['title'],
                onPressed: () {
                  if (i['screen'] != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return i['screen'];
                      }),
                    );
                  }
                },
                icon: i['icon']),
        ],
      ),
    );
  }

  List<Map> getScreens(AppLocalizations localizations) {
    return [
      {'title': localizations.translate('GameMode', 'startTraininggame'), 'screen': GameListScreen(), 'icon': Icons.play_arrow_outlined},
      {'title': localizations.translate('GameMode', 'myTrainingPlans'), 'screen': PlanListScreen(), 'icon': Icons.calendar_today_rounded},
      {'title': localizations.translate('General', 'stats'), 'icon': Icons.data_usage},
      {'title': localizations.translate('General', 'importData'), 'icon': Icons.import_export},
      {'title': localizations.translate('General', 'settings'), 'icon': Icons.settings},
      {'title': localizations.translate('General', 'aboutUs'), 'icon': Icons.code},
      {'title': localizations.translate('General', 'help'), 'icon': Icons.live_help_outlined},
    ];
  }
}
