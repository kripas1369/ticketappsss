import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:ticketapp/features/home_page/presentation/view/homeview.dart';
import 'package:ticketapp/features/profile_page/presentation/view/profileview.dart';
import 'package:ticketapp/features/ticket_page/presentation/view/ticketview.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  static String routeName = "/bottom-navigation-bar";

  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState
    extends State<BottomNavigationBarScreen> {
  int currentindex = 1;
  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(currentindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          getPage(currentindex),
          Align(
            alignment: Alignment.bottomCenter,
            child: CircularBottomNavigation(
              tabItems,
              controller: _navigationController,
              barHeight: 80,
              barBackgroundColor:Colors.black54,
              iconsSize: 26,
              selectedCallback: (selectedPos) {
                setState(() {
                  currentindex = selectedPos!;
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget getPage(int page) {
    switch (page) {
      case 1:
        return HomeViewPage();
      case 2:
        return TicketViewPage();
      case 3:
        return ProfileViewPage();
      default:
        return Container();
    }
  }

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.bookmark_outlined, "Ticket", Colors.grey),
    new TabItem(Icons.home, "Home", Colors.grey),
    new TabItem(Icons.people_outline_sharp, "More", Colors.grey),
  ]);
}