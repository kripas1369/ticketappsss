// movie_list_screen.dart

import 'package:flutter/material.dart';
import 'package:ticketapp/features/booking_page/data/model.dart';
import 'package:ticketapp/features/booking_page/domain/service.dart';

class MovieListScreen extends StatefulWidget {
  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  List<Movies>? movies = [];
  final MovieService _movieService = MovieService();

  @override
  void initState() {
    super.initState();
    _fetchMovies();
  }

  Future<void> _fetchMovies() async {
    try {
      final fetchedMovies = await _movieService.fetchMovies();
      setState(() {
        movies = fetchedMovies;
      });
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('Booked List',style: TextStyle(color: Colors.white),),
      ),
      body: movies != null
          ? Container(
            child: ListView.builder(
              shrinkWrap: true,
                    reverse:  true,
                    itemCount: movies!.length,
                    itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(movies![index].nameMovie ?? 'null'),
                subtitle: Text(movies![index].detailsMovie ?? ''),
                trailing: Text('Rs.${movies![index].priceMovie ?? 0} '),
              ),
            );
                    },
                  ),
          )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
