import 'package:http/http.dart' as http;
import 'dart:convert';

class BookingService {
  static Future<void> createBooking({
    required String nameMovie,
    required String detailsMovie,
    required int priceMovie,
    required String timeMovie,
  }) async {
    final url = Uri.parse('http://localhost:5500/api/appbooking/movies');
    final Map<String, dynamic> requestBody = {
      "success": true,
      "message": "Booking created successfully",
      "booking": {
        "name_movie": nameMovie,
        "details_movie": detailsMovie,
        "price_movie": priceMovie,
        "time_movie": timeMovie,
      }
    };

    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        print('Booking successful');
        // Handle success as per your requirement
      } else {
        print('Failed to create booking: ${response.statusCode}');
        // Handle error as per your requirement
      }
    } catch (e) {
      print('Error creating booking: $e');
      // Handle error as per your requirement
    }
  }
}
