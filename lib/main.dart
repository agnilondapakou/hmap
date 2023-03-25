import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'route/routes_manager.dart';

final int index = 0;

void main() {
  runApp(const MyHomePage(
    title: 'H-Map',
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H-Map',
      initialRoute: RoutesClasse.loading,
      getPages: RoutesClasse.routes,
    );
  }
}
