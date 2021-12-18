import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_intensive/modules/settings/presentation/widgets/item_notifications.dart';

void main() {
  Widget createWidgetForTesting({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  group('Settings Page Widget Tests', () {
    testWidgets('Settings Page smoke test', (WidgetTester tester) async {
      const testKey = Key('testKey');

      await tester.pumpWidget(
        createWidgetForTesting(
          child: const ItemNotifications(
            key: testKey,
          ),
        ),
      );

      await tester.pumpAndSettle();

      final keyFinder = find.byKey(testKey);

      expect(keyFinder, findsOneWidget);
    });
  });
}
