import 'package:flutter/material.dart';

import '../widget/body.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Body(),
    );
  }
}
