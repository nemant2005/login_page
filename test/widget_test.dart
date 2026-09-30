// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:login/main.dart';

void main() {
  testWidgets('Home page shows welcome content', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Good to see you.'), findsOneWidget);
    expect(find.text('Quick access'), findsOneWidget);
    expect(find.text('Explore'), findsOneWidget);
    expect(find.text('Start with the essentials'), findsOneWidget);
  });
}
