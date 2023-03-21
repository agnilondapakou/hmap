// ignore_for_file: type_init_formals
import 'package:flutter/material.dart';

class DrawerListTitle extends StatelessWidget {
  final Widget route;
  final String title;
  final Icon icon;

  DrawerListTitle({Key? key, required this.route, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: () {
        // hide keyboard when menu button is pressed
        FocusScope.of(context).unfocus();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => route,
          ),
        );
      },
    );
  }
}
