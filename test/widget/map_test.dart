import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_intensive/modules/map/presentation/screens/map_screen.dart';

void main() {
  group('Map Page Widget Tests', () {
    testWidgets('Testing Scrolling', (tester) async {
      await tester.pumpWidget(const MapScreen());
      // expect(find.text('COVID - 19 Affected Areas'), findsOneWidget);
      // await tester.fling(find.byType(ListView), const Offset(0, 100), 200);
      // await tester.pumpAndSettle();
      // expect(find.text('COVID - 19 Affected Areas'), findsNothing);
      final gesture = await tester
          .startGesture(const Offset(0, 300)); //Position of the scrollview
      await gesture.moveBy(const Offset(0, -300)); //How much to scroll by
      await tester.pump();
    });
    testWidgets('Testing Scrolling Alternative Approach', (tester) async {
      await tester.pumpWidget(const MapScreen());
      await tester.dragUntilVisible(
        find.text('COVID - 19 Affected Areas'), // what you want to find
        find.byKey(
          const Key('ListViewKey'),
        ), // widget you want to scroll
        const Offset(-250, 0), // delta to move
      );
    });
  });
}
