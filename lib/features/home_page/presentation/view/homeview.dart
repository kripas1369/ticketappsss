import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ticketapp/core/utils/text.dart';
import 'package:ticketapp/features/home_page/data/homeModel.dart';
import 'package:ticketapp/features/home_page/domain/service.dart';
import 'package:ticketapp/features/home_page/presentation/widget/searchbar.dart';
import 'package:ticketapp/features/tickets_details_page/presentation/view/ticketsdetails_view.dart';
import '../widget/ticket_Card.dart';

class HomeViewPage extends StatefulWidget {
  const HomeViewPage({Key? key}) : super(key: key);

  @override
  _HomeViewPageState createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  Movie? _movie;

  // Random image URLs for testing
  final List<String> randomImageUrls1 = [
    "https://www.imdb.com/title/tt15354916/mediaviewer/rm4279328001/?ref_=tt_ov_i"    'https://m.media-amazon.com/images/I/71eHZFw+GlL._AC_UF894,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/71eHZFw+GlL._AC_UF894,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/71eHZFw+GlL._AC_UF894,1000_QL80_.jpg',
  ];

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
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "Choose Movie",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _movie != null
           ? SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child:CustomHeading(text: 'Tranding',)
                 ),
                 TicketCard(
                     title: 'Now Playing',
                     imageUrls:[
                       "https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png",
                       "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQrAj3X3l8pHj2TRRj7XL_6dz-pzxXeM6fZfKxhESWAKXnDJUMv7rA8BwMIbJSsfSHpHWrh",
                       "https://m.media-amazon.com/images/M/MV5BMzQ3ZDA3YTEtZTMwOC00MTQ1LWI2N2QtOWUzNjY3ZTc3YmYwXkEyXkFqcGdeQXVyMTU0ODI1NTA2._V1_.jpg",
                       "https://www.imdb.com/title/tt15354916/mediaviewer/rm4279328001/?ref_=tt_ov_i",
                     ], des: '', price: '', time: '',
                 ),
                 SizedBox(height: 20,),

                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child:CustomHeading(text: 'Banner',)
                 ),
                 SizedBox(height: 10),

                 Padding(
                   padding: const EdgeInsets.only(left: 15,right: 15),
                   child: Container(
                     decoration: BoxDecoration(
                       image:DecorationImage(image: NetworkImage("https://img.freepik.com/free-vector/realistic-horizontal-cinema-movie-time-poster-with-3d-glasses-snacks-tickets-clapper-reel-blue-background-with-bokeh-vector-illustration_1284-77013.jpg"),
                         fit: BoxFit.cover, // Adjust this based on your needs
                       ),
                         color: Colors.black12,
                         borderRadius: BorderRadius.circular(13)
                     ),
                     height: 100,
                     // width: 123,
                   ),
                 ),
                 SizedBox(height: 15,),

                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child:CustomHeading(text: 'New Show',)
                 ),
                 Container(
                  // color: Colors.red,
                  height: 240, // Adjust the height according to your needs
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _movie?.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      final movieData = _movie!.data![index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            // Call _onImagePressed when the container is tapped
                            _onImagePressed(context, movieData.title ?? 'No Title', movieData.poster??"",movieData.description??"",movieData.genre??"",movieData.createdAt??"");
                          },
                          child: Container(
                            width: 150,
                            // Adjust the width according to your needs
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // SizedBox(height: 2,),
                                  Container(
                                    height: 130,
                                   decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        movieData.poster ??
                                          randomImageUrls1[
                                          Random().nextInt(
                                              randomImageUrls1.length)],
             
                                      ),
                                      fit: BoxFit.cover,
             
                                    )
                                  ),),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
             
             
                                        Text(
                                          movieData.title ??
                                              'randomurls', // If title is null, use 'randomurls'
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 1),
                                        Text(
                                          movieData.description ?? '',
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(movieData.language??"")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                           ),
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child:CustomHeading(text: 'Coming Soon',)
                 ),
                 Container(
                   // color: Colors.red,
                   height: 240, // Adjust the height according to your needs
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: _movie?.data?.length ?? 0,
                     itemBuilder: (context, index) {
                       final movieData = _movie!.data![index];
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                           onTap: () {
                             // Call _onImagePressed when the container is tapped
                             _onImagePressed(context, movieData.title ?? 'No Title', movieData.poster??"",movieData.description??"",movieData.genre??"",movieData.createdAt??"");
                           },
                           child: Container(
                             width: 150,
                             // Adjust the width according to your needs
                             child: Card(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   // SizedBox(height: 2,),
                                   Container(
                                     height: 130,
             
                                     decoration: BoxDecoration(
                                         image: DecorationImage(
                                           image: NetworkImage(
                                             movieData.poster ??
                                                 randomImageUrls1[
                                                 Random().nextInt(
                                                     randomImageUrls1.length)],
             
                                           ),
                                           fit: BoxFit.cover,
             
                                         )
                                     ),),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment.start,
                                       children: [
             
             
                                         Text(
                                           movieData.title ??
                                               'randomurls', // If title is null, use 'randomurls'
                                           style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                           ),
                                         ),
                                         SizedBox(height: 1),
                                         Text(
                                           movieData.description ?? '',
                                           maxLines: 3,
                                           overflow: TextOverflow.ellipsis,
                                         ),
                                         Text(movieData.language??"")
                                       ],
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       );
                     },
                   ),
                 ),
                 SizedBox(height: 123,),
               ],
             ),
           )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
  void _onImagePressed(BuildContext context, String title, String imageUrl,String desc,String price,String time) {
    // Navigate to the detail screen when a card is tapped
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(
          title: title,
          imageUrl: imageUrl,
          desc: desc,
          price: price, time: time,),
      ),
    );
  }

}
