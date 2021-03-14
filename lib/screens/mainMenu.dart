import 'package:flutter/material.dart';
import 'gameList.dart';
import '../components/menuButton.dart';

class MainMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map> screens = getScreens();
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Login',
            onPressed: () {
              print('tbd');
            },
          )
        ],
        title: Text('DartsDrill'),
      ),
      body: ListView(
        children: <Widget>[
          for (Map i in screens)
            MenuButton(
                buttonText: i['title'],
                onPressed: i['screen'] != null
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return i['screen'];
                          }),
                        );
                      }
                    : null,
                icon: i['icon']),
        ],
      ),
    );
  }

  List<Map> getScreens() {
    return [
      {
        'title': 'Trainingsspiel starten',
        'screen': GameListScreen(),
        'icon': Icons.play_arrow_outlined
      },
      {'title': 'Meine Trainingspläne', 'icon': Icons.calendar_today_rounded},
      {'title': 'Statistiken', 'icon': Icons.data_usage},
      {'title': 'Daten importieren', 'icon': Icons.import_export},
      {'title': 'Einstellungen', 'icon': Icons.settings},
      {'title': 'Über uns', 'icon': Icons.code},
      {'title': 'Hilfe', 'icon': Icons.live_help_outlined},
    ];
  }
}
