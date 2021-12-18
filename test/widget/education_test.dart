import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_intensive/modules/education/presentation/components/education_preview.dart';

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
}
