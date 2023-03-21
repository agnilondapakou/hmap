import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hmap/pages/dashboard_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const DashboardPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            logoWidget,
            const SizedBox(height: 20),
            loadingWidget,
          ],
        ),
      ),
    );
  }
}

Widget logoWidget = const Card(
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  child: Image(
    image: AssetImage("assets/images/hmap.png"),
    width: 100,
    height: 100,
  ),
);

Widget loadingWidget = const SpinKitThreeBounce(
  color: Color.fromARGB(255, 0, 151, 178),
  size: 20.0,
);
