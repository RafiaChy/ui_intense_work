import 'package:flutter/material.dart';
import 'first_screen.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rafia Test',
      home: FirstScreen(),
    );
  }
}
