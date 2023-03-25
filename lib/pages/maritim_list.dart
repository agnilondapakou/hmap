import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/bottomAppBar.dart';

class MaritimHotelListPage extends StatefulWidget {
  const MaritimHotelListPage({super.key});

  @override
  State<MaritimHotelListPage> createState() => _MaritimHotelListPageState();
}

class _MaritimHotelListPageState extends State<MaritimHotelListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Region Maritim",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 151, 178),
        ),
        bottomNavigationBar: BottomAppBarWidget(index: 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // search bar
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(26, 0, 0, 0),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Chercher un hotel",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 16,
                      fontFamily: "",
                    ),
                    icon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 61, 61, 61),
                    ),
                    contentPadding: EdgeInsets.all(16),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 61, 61),
                    fontSize: 16,
                    fontFamily: "Poppins",
                  ),
                  maxLines: 1,
                  autocorrect: false,
                ),
              ),
            ],
          ),
        ));
  }
}
