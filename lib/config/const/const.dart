import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPimaryColor = Color(0xffF7BB0E);

const kActionColor = Color(0xffF00000);
final primaryColor =Color(0xFF0F75BC);
final iconColor = Colors.grey;

const kBackgroundColor = Color(0xff29282C);
const kMovieNameStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white , );
final kMainTextStyle = GoogleFonts.barlow(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold));
final kSmallMainTextStyle = kMainTextStyle.copyWith(fontSize: 16.0);

final kPromaryColorTextStyle =
    const TextStyle(color: kPimaryColor, fontSize: 18.0, fontWeight: FontWeight.bold);

final BoxDecoration kRoundedFadedBorder = BoxDecoration(
    border: Border.all(color: Colors.white54, width: .5),
    borderRadius: BorderRadius.circular(15.0));

final ThemeData theme =
    ThemeData.dark().copyWith(textTheme: GoogleFonts.barlowTextTheme());

final kprimarycolor =Colors.white;
final buttonColor =Color.fromRGBO(2, 2, 70, 1);
final nextbuttonColor =  Color.fromRGBO(49, 130, 206, 1);
final containerColor =  Color.fromRGBO(209, 217, 246, 1.0);
final starColor =  Color.fromRGBO(76, 110, 212, 1);
final backbuttonColor =  Color.fromRGBO(232, 69, 0, 1);
const errorRed = Color(0xffcf1020);
final circularAvatarColor = Color(0xFF25AAE1).withOpacity(0.1);




final boarderColor = Color.fromRGBO(51, 56, 59, 1.0);

final headTextColor = Color.fromRGBO(23, 15, 73, 1);
final subHeadTextColor = Color.fromRGBO(111, 108, 144, 1);

// <Color>[Color(0xFF50A1FD),Color(0xFF0773E3), Color(0xFF014B96)])
final List<Color> appbarColors = [Color(0xFF50A1FD),Color(0xFF0773E3), Color(0xFF014B96)];

// final primaryColor = Colors.green.shade800;
final inputlabelcolor = Colors.green.shade800;

final labelcolor = Colors.grey.shade800;

const lightGreenColor=Color.fromRGBO(10, 102, 194,100);
const hintgrey = Color(0xffA4AAA5);
final khomeboxcolor= Color.fromRGBO(227, 245, 255, 1);
final Shomeboxcolor= Color.fromRGBO(229, 236, 246, 1);


const kAnimationDuration = Duration(milliseconds: 200);
