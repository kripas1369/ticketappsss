import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press as void Function()?,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            end: Alignment(-0.97, 0.25),
            begin: Alignment(0.97, -0.25),
            colors: [Color(0xFF0F75BC), Color(0xFF25AAE1)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: (18),
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
