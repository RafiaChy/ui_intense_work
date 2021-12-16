import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 76.0,
        bottom: 19.0,
      ),
      child: Row(
        children: [
          avatar(),
          Column(
            children: [
              profileName(),
              Row(
                children: [
                  star(),
                  ten(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container star() {
    return Container(
      width: 20,
      height: 20,
      margin: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
      decoration: const BoxDecoration(
        // color: Colors.indigo,
        image: DecorationImage(
            image: AssetImage('assets/images/star.png'), fit: BoxFit.cover),
      ),
    );
  }

  Container ten() {
    return Container(
      width: 22,
      height: 20,
      margin: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
      decoration: const BoxDecoration(
        // color: Colors.indigo,
        image: DecorationImage(
            image: AssetImage('assets/images/ten.png'), fit: BoxFit.fill),
      ),
    );
  }

  Container profileName() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 10),
      child: const Text(
        "Jon Doe",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container avatar() {
    return Container(
      width: 43,
      height: 43,
      decoration: BoxDecoration(
        color: Colors.indigo[900],
        border: Border.all(color: Colors.blue, width: 3.0),
        borderRadius: const BorderRadius.all(
          Radius.circular(22.0),
        ),
      ),
    );
  }
}
