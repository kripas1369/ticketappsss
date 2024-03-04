import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ticketapp/core/common/global.dart';
import 'package:ticketapp/core/network/apiurls.dart';
import 'package:ticketapp/features/home_page/presentation/view/homeview.dart';
import 'package:ticketapp/features/login_page/presentation/view/loginview.dart';


class VisRegisterService {
  Future<void> registerOrganization({
    required String email,
    required String name,
    required String passowrd,
    // required String address,
    required context,
  }) async {

    Map<String, dynamic> body = {
      "name":name,
      "email": email,
      "password": passowrd.toString(),
    };

    final response = await http.post(Uri.parse(ApiUrl.registerurl),
        headers: {"Content-Type": "application/json"}, body: json.encode(body));

    if (response.statusCode == 200) {
      print("**************");
      print("**************");
      print("**************");
      print("**************");
      print(response.body);

      // Login successful
      print('Login successful');
      print(response.body);
      final Map<String, dynamic> responseBody = json.decode(response.body);

      if (responseBody.containsKey('success')) {
        print(response.body);
        showSnackBar('Success .', Colors.green);

      }
      // You can perform dditional actions here after successful login
      showSnackBar('Please Verify Your OTP.', Colors.green);

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginScreen()),
      );
      showSnackBar('Please Verify Your OTP.', Colors.green);

    } else if (response.statusCode == 400) {
      print(response.body);

      print("**************");
      print("**************");
      print("**************");
      print("**************");
      // Bad request
      final Map<String, dynamic> responseBody = json.decode(response.body);

      if (responseBody.containsKey('email')) {
        print(response.body);

        final List<dynamic> emailErrors = responseBody['email'];
        if (emailErrors.isNotEmpty) {
          final errorMessage = emailErrors.first;
          print('Error: $errorMessage');
          showSnackBar("Error: $errorMessage", Colors.red);
        }
      } else {
        try {
          print(response.body);

          final Map<String, dynamic> responseBody = json.decode(response.body);

          if (responseBody.containsKey('mobile_number')) {
            final List<dynamic> mobileNumberErrors =
            responseBody['mobile_number'];
            if (mobileNumberErrors.isNotEmpty) {
              final errorMessage = mobileNumberErrors.first;
              print('$errorMessage');
              showSnackBar("$errorMessage", Colors.green);
              return;
            }
          }
        } catch (e) {
          print(response.body);

          // Handle JSON decoding errors
          print('Error decoding JSON: $e');
        }

        // If the JSON structure doesn't match the expected format or any other error occurs,
        // you can fall back to a generic error message.
        final errorMessage = 'Not a valid choice';
        print('Error: $errorMessage');
        showSnackBar(" $errorMessage", Colors.red);
      }
    } else if (response.statusCode == 401) {
      hideLoading();
      // Unauthorized
      showSnackBar("Unauthorized access.", Colors.red);
    } else {
      hideLoading();
      // Other error
      print(response.body);
      print('An error occurred. Please try again later.');
      showSnackBar('An error occurred. Please try again later.', Colors.red);
    }
  }
}
