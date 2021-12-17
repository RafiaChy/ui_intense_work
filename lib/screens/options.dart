import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final AssetImage image;
  final Color color;

  Options({
    required this.image,
    required this.color,
  });
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('$image'), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: color,
          ),
        ],
      ),
    );
  }
}
