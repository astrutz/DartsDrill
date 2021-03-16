import 'package:dartsdrill/components/menuButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Widget', () {
    testWidgets('MenuButton without onpressed should be disabled', (WidgetTester tester) async {
      Widget testWidget = new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(
          home: new MenuButton(
            buttonText: 'title',
            icon: Icons.calendar_today_rounded,
          ),
        ),
      );
      await tester.pumpWidget(testWidget);
      final elevatedButtonFinder = find.byWidgetPredicate((widget) => widget is ElevatedButton && widget.enabled == false);
      expect(elevatedButtonFinder, findsOneWidget);
    });

    testWidgets('MenuButton with onpressed should be enabled', (WidgetTester tester) async {
      Widget testWidget = new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(
          home: new MenuButton(
            buttonText: 'title',
            onPressed: () => {},
            icon: Icons.calendar_today_rounded,
          ),
        ),
      );
      await tester.pumpWidget(testWidget);
      final elevatedButtonFinder = find.byWidgetPredicate((widget) => widget is ElevatedButton && widget.enabled == true);
      expect(elevatedButtonFinder, findsOneWidget);
    });
  });
}
