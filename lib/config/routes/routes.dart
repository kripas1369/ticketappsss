import 'package:flutter/material.dart';
import 'package:ticketapp/features/bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:ticketapp/features/splash_page/presentation/view/splash_view_page.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  BottomNavigationBarScreen.routeName: (context) =>  BottomNavigationBarScreen(),

};
