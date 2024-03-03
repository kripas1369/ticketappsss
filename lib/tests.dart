import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ticketapp/core/network/apiurls.dart';



class MyHomePages extends StatelessWidget {
  final String apiUrl = "${ApiUrl.baseurl}/api/appbooking/movies"; // Replace with your API URL

  Future<void> createMovie(BuildContext context) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, dynamic>{
          'name_movie': 'kripassssss',
          'details_movie': 'Action-packed superhero movie',
          'price_movie': 12,
          'time_movie': '3:00 PM',
        },
      ),
    );

    if (response.statusCode == 201) {
      // If the server returns a 201 CREATED response,
      // then the movie was successfully created.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Movie created successfully"),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POST Request Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            createMovie(context);
          },
          child: Text('Create Movie'),
        ),
      ),
    );
  }
}
