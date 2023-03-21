import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 151, 178),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 30, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_pin_rounded,
            size: 100,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "User Name",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 22,
              fontFamily: "",
            ),
          ),
          Text(
            "email@gmail.com",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 16,
              fontFamily: "",
            ),
          ),
        ],
      ),
    );
  }
}
