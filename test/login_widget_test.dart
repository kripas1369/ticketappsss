import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ticketapp/features/login_page/presentation/view/loginview.dart';

void main() {
  testWidgets('Login screen widgets test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    // Verify if the login screen has the required widgets
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Please enter your registered mobile number to login'), findsOneWidget);
    expect(find.text('Mobile Number'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Forgot Password?'), findsOneWidget);
    expect(find.text("Don't have an account?"), findsOneWidget);
    expect(find.text('Register Now'), findsOneWidget);

    // Verify if the text fields are empty initially
    expect(find.text(''), findsNWidgets(2)); // Two text fields, mobile and password

    // Enter text in text fields
    await tester.enterText(find.byKey(Key('mobileNumber')), '1234567890');
    await tester.enterText(find.byKey(Key('password')), 'password');

    // Verify if the entered text is correct
    expect(find.text('1234567890'), findsOneWidget);
    expect(find.text('password'), findsOneWidget);

    // Tap the login button
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Verify if login functionality works as expected (mock the login service)
    // For instance, you can verify if SharedPreferences is updated correctly after login

    // You can add more tests as needed based on your application's functionality
  });
}
