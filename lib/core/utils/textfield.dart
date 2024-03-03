import 'package:flutter/material.dart';
import 'package:ticketapp/config/const/const.dart';

InputDecoration customDecoration(
    String hintText,
    String labelText,
    ) {
  bool _showVisitorWidget = true;
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    fillColor: Colors.white,
    filled: true,
    hintText: hintText,
    // prefixIcon:_showVisitorWidget? icon :Text(),

    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: boarderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: boarderColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
    hoverColor: primaryColor,
  );
}

InputDecoration textfieldWithIconDecoration({
  required String hintText,
  required IconData icon,
}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 15.0,
      vertical: 10,
    ),
    counterText: '',
    hintText: hintText,
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    fillColor: Colors.grey.shade200,
    filled: true,
    prefixIcon: Icon(
      icon,
      color: iconColor,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: boarderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: boarderColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
  );
}

InputDecoration customPrefixDecoration(
    String hintText,
    String labelText,
    Icon icon,
    ) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    fillColor: Colors.white,
    filled: true,
    hintText: hintText,
    prefixIcon: icon,
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: iconColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: iconColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
    hoverColor: primaryColor,
  );
}

InputDecoration customSuffixandPrefixDecoration(String hintText,
    String labelText, Icon icon, bool obscureText, Function? press) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    fillColor: Colors.white,
    filled: true,
    hintText: hintText,
    prefixIcon: icon,
    suffixIcon: IconButton(
      icon: Icon(
        obscureText ? Icons.visibility : Icons.visibility_off,
        color: Colors.grey,
      ),
      onPressed: press as void Function()?,
    ),
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: boarderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: boarderColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
    hoverColor: primaryColor,
  );
}

InputDecoration customSuffixandPrefixDecorationLogin(String hintText,
    String labelText, Icon icon, bool obscureText, Function? press) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    fillColor: Colors.white,
    filled: true,
    hintText: hintText,
    prefixIcon: icon,
    suffixIcon: IconButton(
      icon: Icon(
        obscureText ? Icons.email_outlined : Icons.phone,
        color: Colors.grey,
      ),
      onPressed: press as void Function()?,
    ),
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: boarderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: boarderColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
    hoverColor: primaryColor,
  );
}




InputDecoration dropdownInputDecoration({
  required String hintText,
  required IconData icon,
  // required bool obscureText,
  required Function press,
  required Color boarderColor,
  required Color primaryColor,
}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    fillColor: Colors.white,
    filled: true,
    hintText: hintText,
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: boarderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: boarderColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.grey),
    ),
    hoverColor: primaryColor,
    prefixIcon: Icon(
      icon,
      color: iconColor,
    ), // You can add your prefix icon here
  );
}


Decoration customDropDownDecoration() {
  return BoxDecoration(
      color: kprimarycolor,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: primaryColor, width: 0.4));
}

InputDecoration dropdownDecoration({
  required String hintText,
  required Icon icon,
}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    fillColor: Colors.white,
    filled: true,
    hintText: hintText,
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: boarderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: boarderColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.black26),
    ),
    hoverColor: primaryColor,
    prefixIcon: icon, // You can add your prefix icon here
  );
}




