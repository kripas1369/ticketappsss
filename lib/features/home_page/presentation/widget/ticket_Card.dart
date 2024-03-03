import 'package:flutter/material.dart';
import 'package:ticketapp/features/tickets_details_page/presentation/view/ticketsdetails_view.dart';

class TicketCard extends StatelessWidget {
  final String title;
  final String des;
  final String price;
  final String time;
  final List<String> imageUrls;

  const TicketCard({Key? key, required this.title,
    required this.des,
    required this.imageUrls,
    required this.price,
    required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10), // Adjust spacing between cards
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Make the list scroll horizontally
              itemCount: imageUrls.length,
              itemBuilder: (BuildContext context, int index) {
                String imageUrl = imageUrls[index];
                return GestureDetector(
                  onTap: () {
                    // This is the onPressed action for each image
                    _onImagePressed(context, title, imageUrl);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 123,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white10,
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onImagePressed(BuildContext context, String title, String imageUrl) {
    // This function handles the onPressed action for each image
    // You can perform any action you want here, such as navigating to another screen
    // or showing a dialog, etc.
    print('Title: $title, Image URL: $imageUrl');
    // Example of navigating to another screen with parameters
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(title: title, imageUrl: imageUrl, desc: des, price: price, time: time,),
      ),
    );
  }
}


