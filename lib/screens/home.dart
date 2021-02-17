import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.greenAccent, fontSize: 36.0),
        ),
      ),
    );
  }

  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int miniute = now.minute;

    if (hour < 12) {
      hello = "Good morning";
    } else if (hour < 18) {
      hello = "Good Afternoon";
    } else {
      hello = "Good evening";
    }
//test
    String minutues =
        (miniute < 10) ? "0" + miniute.toString() : miniute.toString();

    return "It's now " + hour.toString() + ":" + minutues + ". \n" + hello;
  }
}
