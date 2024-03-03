import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:ticketapp/core/common/global.dart';
import 'package:ticketapp/core/network/apiurls.dart';
import 'package:ticketapp/features/bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:ticketapp/features/home_page/presentation/view/homeview.dart';


Future<void> createMovie(BuildContext context,
{
  required String name,
  required String details,
  required String price,
  required String time,
}
) async {

  final response = await http.post(
    Uri.parse("${ApiUrl.baseurl}/api/appbooking/movies"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
      <String, dynamic>{
        'name_movie':name ,
        'details_movie':details,
        'price_movie': 12,
        'time_movie': time,
      },
    ),
  );

  if (response.statusCode == 201) {
    // If the server returns a 201 CREATED response,
    // then the movie was successfully created.
    showSnackBar('Login successful', Colors.green);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => BottomNavigationBarScreen()),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Movie booked successfully"),
        duration: Duration(seconds: 2),
      ),

    );
  } else {
    // If the server did not return a 201 CREATED response,
    // then show an error message.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Failed to create movie"),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
