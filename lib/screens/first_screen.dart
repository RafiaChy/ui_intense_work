import 'package:flutter/material.dart';
import '../widgets/cash.dart';
import '../widgets/hamburger.dart';
import '../widgets/profile.dart';
import '../widgets/custom_shape.dart';

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(125.0),
        child: AppBar(
          leading: Hamburger(),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: ClipPath(
            clipper: CustomShape(),
            child: Container(
              color: Colors.indigo[900],
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: const [Profile(), Cash()],
              ),
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
