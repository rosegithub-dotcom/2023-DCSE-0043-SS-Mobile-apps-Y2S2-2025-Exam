// test/widget_test.dart
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tmdb_mockup/main.dart';

void main() {
  testWidgets('TMDB mockup screens test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MovieApp());

    // Verify that we have the TMDB title
    expect(find.text('TMDB App'), findsOneWidget);
    
    // Verify that we have the Home tab
    expect(find.text('Home'), findsOneWidget);
    
    // Verify that we have the Details tab
    expect(find.text('Details'), findsOneWidget);
    
    // Verify we have the Discover text visible in the first tab
    expect(find.text('Discover & Enjoy\nYour Favourite Movies'), findsOneWidget);
    
    // Tap the Details tab and trigger a frame.
    await tester.tap(find.text('Details'));
    await tester.pumpAndSettle();
    
    // Verify that we now see Jumanji on the second screen
    expect(find.text('Jumanji: The Next Level'), findsWidgets);
    
    // Verify that "What's Popular" section is visible
    expect(find.text("What's Popular"), findsOneWidget);
  });
}