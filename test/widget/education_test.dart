import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_intensive/modules/education/presentation/components/education_preview.dart';
import 'package:yandex_intensive/modules/education/presentation/components/education_tabs.dart';
import 'package:yandex_intensive/modules/education/presentation/diagnosis.dart';
import 'package:yandex_intensive/modules/education/presentation/prevention.dart';

void main() {
  Widget createWidgetForTesting({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Education Page smoke test', (WidgetTester tester) async {
    const testKey = Key('testKey');

    await tester.pumpWidget(
      createWidgetForTesting(
        child: const EducationPreview(
          key: testKey,
        ),
      ),
    );

    await tester.pumpAndSettle();

    final keyFinder = find.byKey(testKey);

    expect(keyFinder, findsOneWidget);
  });

  testWidgets('Education Tabs smoke test', (WidgetTester tester) async {
    const testKey = Key('testKey');

    await tester.pumpWidget(
      createWidgetForTesting(
        child: const EducationTabs(
          key: testKey,
        ),
      ),
    );

    await tester.pumpAndSettle();

    final keyFinder = find.byKey(testKey);

    expect(keyFinder, findsOneWidget);
  });

  testWidgets('Education Tabs smoke test', (WidgetTester tester) async {
    const testKey = Key('testKey');

    await tester.pumpWidget(
      createWidgetForTesting(
        child: const DiagnosisPage(
          key: testKey,
        ),
      ),
    );

    await tester.pumpAndSettle();

    final keyFinder = find.byKey(testKey);

    expect(keyFinder, findsOneWidget);
  });

  testWidgets('Education Tabs smoke test', (WidgetTester tester) async {
    const testKey = Key('testKey');

    await tester.pumpWidget(
      createWidgetForTesting(
        child: const PreventionPage(
          key: testKey,
        ),
      ),
    );

    await tester.pumpAndSettle();

    final keyFinder = find.byKey(testKey);

    expect(keyFinder, findsOneWidget);
  });

  // testWidgets('Education Tabs smoke test', (WidgetTester tester) async {
  //   const testKey = Key('testKey');
  //
  //   await tester.pumpWidget(
  //     createWidgetForTesting(
  //       child: const SymptomsPage(
  //         key: testKey,
  //       ),
  //     ),
  //   );
  //
  //   await tester.pumpAndSettle();
  //
  //   final keyFinder = find.byKey(testKey);
  //
  //   expect(keyFinder, findsOneWidget);
  // });
}
