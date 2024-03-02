import 'package:flutter/material.dart';
import 'package:ticketapp/features/seats_page/presentation/view/seatsview_page.dart';
import 'package:ticketapp/features/tickets_details_page/presentation/widget/dateandtime_Card.dart';

class DetailScreen extends StatelessWidget {

  final String imageUrl;
  final String title;
  final String desc;
  final String price;
  final String time;

  const DetailScreen({
    required this.title,
    required this.imageUrl,
    required this.desc,
    required this.price,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,

        title: Text(title,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.network(
              imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Title: $title',
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            SizedBox(height: 10),

            Container(
              color: Colors.black,
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: DateTimeCard(boxcolor: Colors.white10,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: DateTimeCard(boxcolor: Colors.white10,),
                  ),
                  DateTimeCard(boxcolor: Colors.red,),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: DateTimeCard(boxcolor: Colors.white10,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: DateTimeCard(boxcolor: Colors.white10,),
                  ),
                  Spacer(),


                ],
              ),
            ),
            SizedBox(height: 10),
            MaterialButton(
              minWidth: 340,
              height: 60,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuyTicket(
                      title: title,
                      desc: desc,
                      price: price,
                      time: time,

                    )
                  ),
                );
              },
              child: Text("Reservation",style: TextStyle(color: Colors.white)),
              color: Colors.brown,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Adjust the radius for desired circular border
              ),
            ),
          ],
        ),
      ),
    );
  }
}
