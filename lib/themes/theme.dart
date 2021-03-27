import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme(context) {
  final textTheme = Theme.of(context).textTheme;
  return ThemeData(
    primaryColor: Colors.green[800],
    colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Colors.green[800],
          onPrimary: Color(0xFFFFFFFF),
          primaryVariant: Colors.green[900],
        ),
    textTheme: GoogleFonts.rubikTextTheme(textTheme),
  );
}
