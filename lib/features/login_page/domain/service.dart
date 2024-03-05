import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ticketapp/core/common/global.dart';
import 'package:ticketapp/core/network/apiurls.dart';
import 'package:ticketapp/features/bottom_Nav_Bar/bottom_nav_bar.dart';

class VisLoginService {
  Future<void> loginUser({
    required context,
    required String isEmail,
    required String password,
    bool isRemember = false,
  }) async {
    // showLoading();
    print(password);

    Map<String, dynamic> requestBody = {
      "email": isEmail,
      "password": password
    };
    final response = await http.post(Uri.parse(ApiUrl.loginurl),
        headers: {"Content-Type": "application/json"},
        body: json.encode(requestBody));
    if (response.statusCode == 200) {
      hideLoading();
      // Login successful
      print('Login successful');
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

    }  else {
      hideLoading();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Movie booked successfully"),
          duration: Duration(seconds: 2),
        ),
      );
      print('An error occurred. Please try again later.');
      showSnackBar('An error occurred. Please try again later.', Colors.red);
    }
  }
}



