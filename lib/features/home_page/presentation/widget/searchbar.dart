import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      width: 400,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.white24),
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.settings_voice),

          // suffixIcon: Icon(Icons.fiber_smart_record_outlined),
        ),
      ),
    );
  }
}
