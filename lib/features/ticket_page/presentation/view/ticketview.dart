import 'package:flutter/material.dart';

class TicketViewPage extends StatelessWidget {
  const TicketViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.green], // Set your gradient colors
            ),
          ),

        ),
      ],
    );
  }
}
