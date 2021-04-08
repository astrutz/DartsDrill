import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './themes/theme.dart';
import './screens/MainMenu.dart';

void main() => runApp(_App());

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainMenuScreen(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('de'),
        const Locale('en'),
      ],
      theme: appTheme(context),
    );
  }
}
