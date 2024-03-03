import 'package:flutter/material.dart';
import 'package:ticketapp/core/utils/button.dart';
import 'package:ticketapp/features/bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:ticketapp/features/login_page/presentation/view/loginview.dart';
import 'package:ticketapp/features/splash_page/presentation/static/content.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "We help people connect with ticket book.",
      "image": "https://img.freepik.com/premium-vector/movie-ticket-logo-template-design_20029-891.jpg"},
    {
      "text": "We show the easy way to ticket. \nJust stay at home with us",
      "image": "https://www.casonstravels.com/system/crud/images/service/13/thumbnail.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 123),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 2),

                    DefaultButton(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    LoginScreen())));
                      },
                      text: "Continue",
                    ),
                    // MaterialButton(
                    //   color: kPrimaryColor,
                    //   child: Text(
                    //     "Continue",
                    //     style: TextStyle(color: kPrimaryLightColor),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, SignInScreen.routeName);
                    //
                    //   },
                    // ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
