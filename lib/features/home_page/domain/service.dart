import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ticketapp/core/network/apiurls.dart';
import 'package:ticketapp/features/home_page/data/homeModel.dart';

class MovieService {


  Future<Movie?> getAllMovies() async {
    final url = Uri.parse('${ApiUrl.baseurl}/api/movies/get-all-movies');
    final headers = {
      'X-Authtoken': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NWRmMjEzNDVlMWQ0MGI2YTc0M2I3MDkiLCJpYXQiOjE3MDkyMTI3NjB9.80z2VI4zWoqSfmqEIOL906koqIEQSPt6cZU7YjL4Q9c',
      // Add other headers if needed
    };
    try {
      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        return Movie.fromJson(jsonResponse);
      } else {
        print('Request failed with status: ${response.statusCode}.');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
