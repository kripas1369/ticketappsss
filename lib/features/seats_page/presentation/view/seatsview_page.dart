import 'package:flutter/material.dart';
import 'package:ticketapp/config/const/const.dart';
import 'package:ticketapp/features/bill_page/presentation/bill_page.dart';
import 'package:ticketapp/features/booking_page/domain/service.dart';
import 'package:ticketapp/features/seats_page/data/booking_service.dart';
import 'package:ticketapp/features/seats_page/presentation/widget/calendar_day.dart';
import 'package:ticketapp/features/seats_page/presentation/widget/cienma_seat.dart';
import 'package:ticketapp/features/seats_page/presentation/widget/show_time.dart';


class BuyTicket extends StatelessWidget {
  final String title;
  final String image;
  final String desc;
  final String? price;
  final String time;

  const BuyTicket({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:15.0 , left:15.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * .12,
                      height: MediaQuery.of(context).size.width * .12,
                      decoration: kRoundedFadedBorder,
                      child: IconButton(
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            size: 28.0,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .75,
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                width: MediaQuery.of(context).size.width * .9,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Row(
                      children: const <Widget> [
                        CalendarDay(
                          dayNumber: '9',
                          dayAbbreviation: 'TH',
                        ),
                        CalendarDay(
                          dayNumber: '10',
                          dayAbbreviation: 'FR',
                        ),
                        CalendarDay(
                          dayNumber: '11',
                          dayAbbreviation: 'SA',
                        ),
                        CalendarDay(
                          dayNumber: '12',
                          dayAbbreviation: 'SU',
                          isActive: true,
                        ),
                        CalendarDay(
                          dayNumber: '13',
                          dayAbbreviation: 'MO',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(child: Image.asset('assets/images/screen.png')),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // First Seat Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20),
                        ),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20) * 2,
                        ),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20),
                        ),
                      ],
                    ),
                    // Second Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20) * 2,
                        ),
                        CienmaSeat(
                          isReserved: true,
                        ),
                        CienmaSeat(),
                        CienmaSeat(),
                      ],
                    ),
                    // Third  Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20) * 2,
                        ),
                        CienmaSeat(),
                        CienmaSeat(
                          isReserved: true,
                        ),
                        CienmaSeat(
                          isReserved: true,
                        ),
                      ],
                    ),
                    // 4TH Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20) * 2,
                        ),
                        CienmaSeat(
                          isReserved: true,
                        ),
                        CienmaSeat(),
                        CienmaSeat(),
                      ],
                    ),
                    // 5TH Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20) * 2,
                        ),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                      ],
                    ),
                    // 6TH Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20) * 2,
                        ),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                      ],
                    ),
                    // final Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20),
                        ),
                        CienmaSeat(),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20) * 2,
                        ),
                        CienmaSeat(),
                        CienmaSeat(),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ShowTime(
                      time: '11:00',
                      price: 5,
                      isActive: false,
                    ),
                    ShowTime(
                      time: '12:30',
                      price: 10,
                      isActive: true,
                    ),
                    ShowTime(
                      time: '12:30',
                      price: 10,
                      isActive: false,
                    ),
                    ShowTime(
                      time: '12:30',
                      price: 10,
                      isActive: false,
                    ),
                    ShowTime(
                      time: '12:30',
                      price: 10,
                      isActive: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Icon(
                      Icons.tv,
                      color: kPimaryColor,
                      size: 25.0,
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('tom Cineplex ', style: kMainTextStyle),
                          const Text('hero , 1205 Nepal, KTM',
                              overflow: TextOverflow.ellipsis,
                              style:
                              TextStyle(color: Colors.white30, fontSize: 18.0)),
                          const SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              Text('2D', style: kMainTextStyle),
                              const SizedBox(width: 10.0),
                              const Text('3D',
                                  style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      size: 30.0,
                      color: Colors.white38,
                    )
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Rs.100',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal:40.0 , vertical:10.0),
                    decoration:  BoxDecoration(color:  kActionColor , borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0))),
                    child: InkWell(
                      onTap: () {
                        // Show payment confirmation dialog
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  BillPage(title: title, price:"23", desc:desc, image: image,)),
                        );
                      },
                      child: Text(
                        'Buy',
                        style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
