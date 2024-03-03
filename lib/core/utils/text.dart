import 'package:flutter/material.dart';
import 'package:ticketapp/config/const/const.dart';

class CustomHeading extends StatelessWidget {
  final String text;

  CustomHeading({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF090A0A),
        fontSize: 35,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class CustomSubHeading extends StatelessWidget {
  final String text;

  CustomSubHeading({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF090A0A),
          fontSize: 13,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class TextFieldText extends StatelessWidget {
  final String text;

  TextFieldText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF191919),
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class FormTitleText extends StatelessWidget {
  final String text;

  FormTitleText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;

  CustomText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 14,
          // color:Color.fromRGBO(0, 0, 0, 0.5),
          color: primaryColor,
          fontWeight: FontWeight.w400),
    );
  }
}

class PreviewText extends StatelessWidget {
  final String nametext;
  final String maintext;

  PreviewText({required this.nametext, required this.maintext});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          RichText(
            textAlign:
            TextAlign.start, // Set the text alignment to start (left)
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$nametext:",
                  style: TextStyle(
                    color: Color(0xFF898989),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                WidgetSpan(
                  child: SizedBox(
                      width: 8), // Add a SizedBox between the text spans
                ),
                TextSpan(
                  text: maintext,
                  style: TextStyle(
                    color: Color(0xFF898989),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                WidgetSpan(
                  child: SizedBox(
                      width: 90), // Add a SizedBox between the text spans
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PreviewPageText extends StatelessWidget {
  final String nametext;
  final String maintext;
  final IconData icon;

  PreviewPageText({
    required this.nametext,
    required this.maintext,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          SizedBox(
            width: 12,
          ),
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: RichText(
              textAlign:
              TextAlign.start, // Set the text alignment to start (left)
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$nametext:",
                    style: TextStyle(
                      color: Color(0xFF898989),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  WidgetSpan(
                    child: SizedBox(
                        width: 8), // Add a SizedBox between the text spans
                  ),
                  TextSpan(
                    text: maintext,
                    style: TextStyle(
                      color: Color(0xFF898989),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
