import 'package:flutter/material.dart';

import 'package:rafia_test/models/option_model.dart';
import 'package:rafia_test/screens/options.dart';
import '../widgets/cash.dart';
import '../widgets/hamburger.dart';
import '../widgets/profile.dart';
import '../widgets/custom_shape.dart';

class FirstScreen extends StatelessWidget {
  List<OptionModel> toptions = [
    OptionModel(
      tImage: const AssetImage('assets/images/football.png'),
      tcolor: Colors.amber,
    ),
    OptionModel(
      tImage: const AssetImage('assets/images/crown.png'),
      tcolor: Colors.blue,
    ),
    OptionModel(
      tImage: const AssetImage('assets/images/magnet.png'),
      tcolor: Colors.blue,
    ),
    OptionModel(
      tImage: const AssetImage('assets/images/popcorn.png'),
      tcolor: Colors.blue,
    ),
  ];

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
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: toptions.length,
          itemBuilder: (BuildContext context, int index) {
            return Options(
                image: toptions[index].tImage, color: toptions[index].tcolor);
          },
        ),
      ),
    );
  }
}
