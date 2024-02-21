import 'package:flutter/material.dart';

class DateTimeCard extends StatelessWidget {
  final Color boxcolor;
  const DateTimeCard({super.key,required this.boxcolor});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), // Adjust the radius for desired circular border
            color:boxcolor,
          ),
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(10),
          height: 80,
          width: 50,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sat",style: TextStyle(color: Colors.white),),
              Text("16",style: TextStyle(color: Colors.white)),
            ],
          )),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), // Adjust the radius for desired circular border
            color: boxcolor,
          ),
          // margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(10),
          height: 40,
          width: 60,
          child:  Center(child: Text("Sat",style: TextStyle(color: Colors.white))),
        ),
      ],
    );
  }
}
