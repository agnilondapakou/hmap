import 'package:flutter/material.dart';
import 'package:hmap/widgets/bottomAppBar.dart';
import 'package:hmap/widgets/grid_dashboard_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Hotels Mapping",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 151, 178),
      ),
      bottomNavigationBar: BottomAppBarWidget(index: 0),
      // drawer: DrawerWidget(),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage("assets/images/serachhome.png"),
            width: 150,
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bienvenue sur Hotels Map",
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 61, 61),
                    fontSize: 24,
                    fontFamily: "",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Ici vous pouvez trouver :",
                  style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridDashboardWidget(),
        ],
      ),
    );
  }
}
