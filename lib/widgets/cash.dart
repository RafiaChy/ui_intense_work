import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cash extends StatefulWidget {
  const Cash({Key? key}) : super(key: key);

  @override
  _CashState createState() => _CashState();
}

class _CashState extends State<Cash> {
  bool isSwitched = true;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cashMethod(),
        rotatedSwitchMethod(),
        freeMethod(),
      ],
    );
  }

  Container freeMethod() {
    return Container(
      margin: const EdgeInsets.only(left: 26),
      child: const Text(
        'Free Mode',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Container rotatedSwitchMethod() {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      child: RotatedBox(
        quarterTurns: -1,
        child: CupertinoSwitch(
          onChanged: toggleSwitch,
          value: isSwitched,
          activeColor: Colors.white,
          thumbColor: CupertinoColors.activeBlue,
        ),
      ),
    );
  }

  Container cashMethod() {
    return Container(
      margin: const EdgeInsets.only(
        left: 26,
        top: 30,
      ),
      child: const Text(
        'Cash Mode',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
