import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ticketapp/features/splash_page/presentation/static/content.dart';
import 'package:ticketapp/features/login_page/presentation/view/loginview.dart';
import 'package:ticketapp/features/splash_page/presentation/widget/body.dart';

void main() {
  testWidgets('Body widget displays splash content and Continue button',
          (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: Body(),
          ),
        ));

        expect(find.text("We help people connect with ticket book."), findsOneWidget);
        expect(find.byWidgetPredicate((widget) => widget is SplashContent), findsOneWidget);

        await tester.tap(find.text('Continue'));
        await tester.pumpAndSettle();

        expect(find.byType(LoginScreen), findsOneWidget);
      });

  testWidgets('Body widget displays dots indicating current page',
          (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: Body(),
          ),
        ));

        // Initially, only the first dot should be blue
        expect(find.byType(AnimatedContainer), findsNWidgets(2)); // Two dots
        final Iterable<AnimatedContainer> dotContainers = tester.widgetList(find.byType(AnimatedContainer)).cast<AnimatedContainer>();
        expect(dotContainers.elementAt(0).decoration, BoxDecoration(color: Colors.blue));
        expect(dotContainers.elementAt(1).decoration, BoxDecoration(color: Color(0xFFD8D8D8)));

        // Swipe to the second splash content
        await tester.drag(find.byType(PageView), Offset(-500, 0));
        await tester.pumpAndSettle();

        // After swiping, the second dot should become blue
        expect(dotContainers.elementAt(0).decoration, BoxDecoration(color: Color(0xFFD8D8D8)));
        expect(dotContainers.elementAt(1).decoration, BoxDecoration(color: Colors.blue));
      });
}
