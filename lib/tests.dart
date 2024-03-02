import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ticketapp/core/network/apiurls.dart';

// Model classes
class Movie {
  bool? success;
  String? message;
  List<Data>? data;

  Movie({this.success, this.message, this.data});

  Movie.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? title;
  String? description;
  int? duration;
  String? genre;
  String? language;
  String? releaseDate;
  String? poster;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data({
    this.sId,
    this.title,
    this.description,
    this.duration,
    this.genre,
    this.language,
    this.releaseDate,
    this.poster,
    this.createdAt,
    this.updatedAt,
    this.iV,
  });

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    duration = json['duration'];
    genre = json['genre'];
    language = json['language'];
    releaseDate = json['releaseDate'];
    poster = json['poster'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['description'] = description;
    data['duration'] = duration;
    data['genre'] = genre;
    data['language'] = language;
    data['releaseDate'] = releaseDate;
    data['poster'] = poster;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}

// Service class
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


class MyHomePages extends StatefulWidget {
  @override
  _MyHomePagesState createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  Movie? _movie;

  @override
  void initState() {
    super.initState();
    _fetchMovies();
  }

  Future<void> _fetchMovies() async {
    final movie = await MovieService().getAllMovies();
    setState(() {
      _movie = movie;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: _movie != null
          ? ListView.builder(
        itemCount: _movie!.data!.length,
        itemBuilder: (context, index) {
          final movieData = _movie!.data![index];
          return ListTile(
            leading: movieData.poster != null && movieData.poster!.isNotEmpty
                ? Image.network(movieData.poster!)
                : Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqUTaYVrGU9Pw_UG2_-eVwyuF7xGOUtYiZKTzN3N45&s'),             title: Text(movieData.title ?? ''),
            subtitle: Text(movieData.description ?? ''),
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
