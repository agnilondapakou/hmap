import 'package:flutter/material.dart';
import 'package:hmap/widgets/bottomAppBar.dart';
import '../widgets/grid_regions_widget.dart';

class HotelsRegionsPage extends StatefulWidget {
  const HotelsRegionsPage({super.key});

  @override
  State<HotelsRegionsPage> createState() => _HotelsRegionsPageState();
}

class _HotelsRegionsPageState extends State<HotelsRegionsPage> {
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
            image: AssetImage("assets/images/regionmap.png"),
            width: 110,
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Retrouvez les hotels par region",
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 61, 61),
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridRegionsWidget(),
        ],
      ),
    );
  }
}
