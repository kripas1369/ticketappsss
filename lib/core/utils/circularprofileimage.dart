import 'package:flutter/material.dart';

class CircularProfileImage extends StatelessWidget {
  const CircularProfileImage({
    super.key,
    required this.radius,
    required this.image,
  });

  final double radius;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.all(4),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 55,
        backgroundImage: image,
      ),
    );
  }
}
