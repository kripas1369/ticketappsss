import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ticketapp/features/register_page/presentation/view/registerview.dart';

void main() {
  testWidgets('Register screen widgets test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: RegisterScreen()));

    // Verify if the register screen has the required widgets
    expect(find.text('Register'), findsOneWidget);
    expect(find.text('Please fill in all the information below to register on the app.'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Full Name'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Register'), findsOneWidget);
    expect(find.text('Forgot Password?'), findsOneWidget);
    expect(find.text("Already have an account?"), findsOneWidget);
    expect(find.text('Login Now'), findsOneWidget);

    expect(find.text(''), findsNWidgets(3));

    // Enter text in text fields
    await tester.enterText(find.byKey(Key('email')), 'test@example.com');
    await tester.enterText(find.byKey(Key('fullName')), 'John Doe');
    await tester.enterText(find.byKey(Key('password')), 'password');

    // Verify if the entered text is correct
    expect(find.text('test@example.com'), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('password'), findsOneWidget);

    // Tap the register button
    await tester.tap(find.text('Register'));
    await tester.pump();

    // Verify if register functionality works as expected (mock the register service)
    // For instance, you can verify if registration service is called correctly

    // You can add more tests as needed based on your application's functionality
  });
}
