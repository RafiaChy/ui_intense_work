import 'package:flutter/material.dart';

class Hamburger extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 12,
        top: 21,
      ),
      width: 40,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Icon(Icons.menu, color: Colors.indigo[900]),
    );
  }
}
