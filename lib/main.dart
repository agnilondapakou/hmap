import 'package:flutter/material.dart';
import 'package:hmap/pages/loading_page.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H-Map',
      home: Center(child: LoadingPage()),
    );
  }
}
