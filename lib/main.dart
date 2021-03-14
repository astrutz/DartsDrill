import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/mainMenu.dart';

void main() => runApp(_App());

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      home: MainMenuScreen(),
      theme: ThemeData(
        primaryColor: Colors.green[800],
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Color(0xFF2E7D32),
              onPrimary: Color(0xFFFFFFFF),
              primaryVariant: Color(0xFF005005),
            ),
        textTheme: GoogleFonts.rubikTextTheme(textTheme),
      ),
    );
  }
}
