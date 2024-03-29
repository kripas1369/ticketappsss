import 'package:flutter/material.dart';
import 'package:ticketapp/config/routes/routes.dart';
import 'package:ticketapp/features/bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:ticketapp/features/splash_page/presentation/view/splash_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

