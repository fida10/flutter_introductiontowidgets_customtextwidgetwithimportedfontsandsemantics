import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:introductiontowidgets_customtextwidgetwithimportedfontsandsemantics/main.dart';

void main() {
testWidgets('semanticsForAText returns correct widget',
      (WidgetTester tester) async {
    // Build the YourCustomTextWidget in the test environment.
    await tester.pumpWidget(MaterialApp(home: YourCustomTextWidget()));

    // Find the Semantics widget with the correct label.
    final semanticsFinder = find.byWidgetPredicate(
      (Widget widget) =>
          widget is Semantics &&
          widget.properties.label == 'Your Semantic Description',
    );

    // Check that the Semantics widget was created.
    expect(semanticsFinder, findsOneWidget);

    // Find the Text widget.
    final textFinder = find.descendant(
      of: semanticsFinder,
      matching: find.byType(Text),
    );

    // Check that the Text widget was created.
    expect(textFinder, findsOneWidget);

    // Get the Text widget.
    final textWidget = tester.widget<Text>(textFinder);

    // Check that the Text widget has the correct text.
    expect(textWidget.data, 'Hello!');

    // Check that the Text widget has the correct style.
    expect(textWidget.style,
        GoogleFonts.aBeeZee(textStyle: const TextStyle(fontSize: 20)));
  });
}
