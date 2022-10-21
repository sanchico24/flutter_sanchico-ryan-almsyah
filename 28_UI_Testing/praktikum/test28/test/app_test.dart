import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test28/main.dart' as app;

void main() {
  group('Check All UI', () {
    testWidgets('Cek judul App', (tester) async {
      app.main();
      expect(find.text('UI Test'), findsOneWidget);
    });

    testWidgets('Cek Tabbar', (tester) async {
      app.main();
      var finderContact = find.text('Contact');
      var finderFood = find.text('Food');
      await tester.tap(finderContact);
      await tester.tap(finderFood);
      expect(finderContact, findsOneWidget);
      expect(finderFood, findsOneWidget);
    });

    testWidgets('Cek Body ContactPage', (tester) async {
      app.main();
      var loading = find.byType(CircularProgressIndicator);
      expect(loading, findsOneWidget);
      await tester.pump();
      expect(loading, findsNothing);
    });
  });
}
