// movie_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ticketapp/core/network/apiurls.dart';
import 'package:ticketapp/features/booking_page/data/model.dart';

class MovieService {
  Future<List<Movies>?> fetchMovies() async {
    final response = await http.get(Uri.parse('${ApiUrl.baseurl}/api/appbooking/movies'));

    if (response.statusCode == 200) {
      final decodedResponse = json.decode(response.body);
      final bookingList = BookingList.fromJson(decodedResponse);
      print(response.body);
      print("^^^^^^^^^^^^^^^");
      return bookingList.movies;
    } else {
      print(response.body);
      print("***************");
      throw Exception('Failed to load movies');
    }
  }
}

