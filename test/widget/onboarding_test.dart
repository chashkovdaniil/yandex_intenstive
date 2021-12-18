import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_intensive/modules/onboarding/left_button.dart';
import 'package:yandex_intensive/modules/onboarding/onboarding.dart';
import 'package:yandex_intensive/modules/onboarding/page_point.dart';
import 'package:yandex_intensive/modules/onboarding/right_button.dart';

void main() {
  Widget createWidgetForTesting({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  group('Onboarding Widget Tests', () {
    testWidgets('Onboarding Page smoke test', (WidgetTester tester) async {
      const testKey = Key('testKey');

      await tester.pumpWidget(
        createWidgetForTesting(
          child: Onboarding(
            key: testKey,
          ),
        ),
      );

      await tester.pumpAndSettle();

      final keyFinder = find.byKey(testKey);

      expect(keyFinder, findsOneWidget);
    });

    testWidgets('Onboarding Page smoke test', (WidgetTester tester) async {
      const testKey = Key('testKey');

      await tester.pumpWidget(
        createWidgetForTesting(
          child: const OnboardingPagePoint(
            true,
            key: testKey,
          ),
        ),
      );

      await tester.pumpAndSettle();

      final keyFinder = find.byKey(testKey);

      expect(keyFinder, findsOneWidget);
    });

    testWidgets('Right button Page smoke test', (WidgetTester tester) async {
      const testKey = Key('testKey');

      void onPressedTest() {}
      ;

      await tester.pumpWidget(
        createWidgetForTesting(
          child: OnboardingRightButton(
            onPressed: onPressedTest,
            key: testKey,
          ),
        ),
      );

      await tester.pumpAndSettle();

      final keyFinder = find.byKey(testKey);

      expect(keyFinder, findsOneWidget);
    });

    testWidgets('Left button smoke test', (WidgetTester tester) async {
      const testKey = Key('testKey');

      void onPressedTest() {}
      ;

      await tester.pumpWidget(
        createWidgetForTesting(
          child: OnboardingLeftButton(
            onPressed: onPressedTest,
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
