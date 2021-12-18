import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_intensive/modules/map/presentation/widgets/line_chart.dart';

void main() {
  Widget createWidgetForTesting({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  group('Map Page Widget Tests', () {
    testWidgets('Testing Scrolling', (tester) async {
      // await tester.pumpWidget(const MapScreen());
      // expect(find.text('COVID - 19 Affected Areas'), findsOneWidget);
      // await tester.fling(find.byType(ListView), const Offset(0, 100), 200);
      // await tester.pumpAndSettle();
      // expect(find.text('COVID - 19 Affected Areas'), findsNothing);
      // final gesture = await tester
      //     .startGesture(const Offset(0, 300)); //Position of the scrollview
      // await gesture.moveBy(const Offset(0, -300)); //How much to scroll by
      // await tester.pump();
    });

    testWidgets('Map Page smoke test', (WidgetTester tester) async {
      const testKey = Key('testKey');

      await tester.pumpWidget(
        createWidgetForTesting(
          child: const CurrentSituationGraph(
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
