import 'package:flutter/material.dart';
import './themes/theme.dart';
import './screens/MainMenu.dart';

void main() => runApp(_App());

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainMenuScreen(),
      theme: appTheme(context),
    );
  }
}
