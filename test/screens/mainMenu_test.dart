import 'package:dartsdrill/components/menuButton.dart';
import 'package:dartsdrill/screens/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Unit', () {
    final mainMenu = MainMenuScreen();
    final screens = mainMenu.getScreens();
    test('MainMenu should have screens to show', () {
      expect(mainMenu.getScreens().length, greaterThanOrEqualTo(1));
    });

    test('MainMenu should have screens with titles', () {
      final hasTitles = screens.every((screen) => screen.containsKey('title'));
      expect(hasTitles, true);
    });

    test('MainMenu should have screens with icons', () {
      final hasIcons = screens.every((screen) => screen.containsKey('icon'));
      expect(hasIcons, true);
    });
  });

  group('Widget', () {
    testWidgets('MainMenu should have MenuButtons', (WidgetTester tester) async {
      Widget testWidget = new MediaQuery(data: new MediaQueryData(), child: new MaterialApp(home: new MainMenuScreen()));
      await tester.pumpWidget(testWidget);
      final menuButtonFinder = find.byWidgetPredicate((widget) => widget is MenuButton);
      expect(menuButtonFinder, findsWidgets);
    });

    testWidgets('MainMenu should have as much buttons as screens', (WidgetTester tester) async {
      Widget testWidget = new MediaQuery(data: new MediaQueryData(), child: new MaterialApp(home: new MainMenuScreen()));
      await tester.pumpWidget(testWidget);
      final mainMenu = MainMenuScreen();
      final menuButtonFinder = find.byWidgetPredicate((widget) => widget is MenuButton);
      expect(menuButtonFinder, findsNWidgets(mainMenu.getScreens().length));
    });
  });
}
