import 'package:flutter/material.dart';
import 'package:ticketapp/features/home_page/presentation/widget/searchbar.dart';

import '../widget/ticket_Card.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text("Choose Movie",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(),
            TicketCard(
                title: 'Now Playing',
              imageUrls:[
                "https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png",
                    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQrAj3X3l8pHj2TRRj7XL_6dz-pzxXeM6fZfKxhESWAKXnDJUMv7rA8BwMIbJSsfSHpHWrh",
           "https://m.media-amazon.com/images/M/MV5BMzQ3ZDA3YTEtZTMwOC00MTQ1LWI2N2QtOWUzNjY3ZTc3YmYwXkEyXkFqcGdeQXVyMTU0ODI1NTA2._V1_.jpg",
        "https://www.imdb.com/title/tt15354916/mediaviewer/rm4279328001/?ref_=tt_ov_i",
              ]
            ),
            TicketCard(
                title: 'Now Playing',
                imageUrls:[
                  "https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png",
                  "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQrAj3X3l8pHj2TRRj7XL_6dz-pzxXeM6fZfKxhESWAKXnDJUMv7rA8BwMIbJSsfSHpHWrh",
                  "https://m.media-amazon.com/images/M/MV5BMzQ3ZDA3YTEtZTMwOC00MTQ1LWI2N2QtOWUzNjY3ZTc3YmYwXkEyXkFqcGdeQXVyMTU0ODI1NTA2._V1_.jpg",
                  "https://www.imdb.com/title/tt15354916/mediaviewer/rm4279328001/?ref_=tt_ov_i",
                ]
            ),
            TicketCard(
                title: 'Now Playing',
                imageUrls:[
                  "https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png",
                  "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQrAj3X3l8pHj2TRRj7XL_6dz-pzxXeM6fZfKxhESWAKXnDJUMv7rA8BwMIbJSsfSHpHWrh",
                  "https://m.media-amazon.com/images/M/MV5BMzQ3ZDA3YTEtZTMwOC00MTQ1LWI2N2QtOWUzNjY3ZTc3YmYwXkEyXkFqcGdeQXVyMTU0ODI1NTA2._V1_.jpg",
                  "https://www.imdb.com/title/tt15354916/mediaviewer/rm4279328001/?ref_=tt_ov_i",
                ]
            ),
            SizedBox(height: 130,)
          ],
        ),
      ),
    );
  }
}
