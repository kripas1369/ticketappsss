import 'package:flutter/material.dart';

import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:ticketapp/config/routes/routes.dart';
import 'package:ticketapp/features/splash_page/presentation/view/splash_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: "test_public_key_d5d9f63743584dc38753056b0cc737d5",
        enabledDebugging: true,
        builder: (context, navKey) {
          return MaterialApp(
            title: 'Khalti Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: SplashScreen.routeName,
            routes: routes,
            navigatorKey: navKey,
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ],
          );
        });
  }
}
