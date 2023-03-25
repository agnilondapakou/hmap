import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/bottomAppBar.dart';

final String title = "Hotel";
final Color color = Color.fromARGB(255, 0, 151, 178);
final IconData icon = Icons.hotel;
final Color backColor = Color.fromARGB(255, 255, 255, 255);

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
              const SizedBox(
                height: 20,
              ),
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
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 0, 151, 178),
                    ),
                    hintText: "Chercher un hotel",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 16,
                      fontFamily: "",
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
              // category
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 151, 178),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              // category list
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 0, 151, 178),
                          ),
                          child: const Text(
                            "Tout",
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "Popins",
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            var cat = 0;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 111, 111, 111),
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          "4 etoiles",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Popins",
                            color: Color.fromARGB(255, 111, 111, 111),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 111, 111, 111),
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          "3 etoiles",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Popins",
                            color: Color.fromARGB(255, 111, 111, 111),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color.fromARGB(255, 111, 111, 111),
                              width: 1),
                        ),
                        child: const Text(
                          "2 etoiles",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Popins",
                            color: Color.fromARGB(255, 111, 111, 111),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color.fromARGB(255, 111, 111, 111),
                              width: 1),
                        ),
                        child: const Text(
                          "1 etoiles",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Popins",
                            color: Color.fromARGB(255, 111, 111, 111),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color.fromARGB(255, 111, 111, 111),
                              width: 1),
                        ),
                        child: const Text(
                          "Motel",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Popins",
                            color: Color.fromARGB(255, 111, 111, 111),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        "Recommender...",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 151, 178),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Card(
                        // edit border radius
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/onomo.jpg",
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Onomo Hotel",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.map,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.language,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // category
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Categorie: ",
                                          ),
                                          Text(
                                            "4 etoiles",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.amber),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        // edit border radius
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/ibis.jpg",
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Ibis Hotel",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.map,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.language,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // category
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Categorie: ",
                                          ),
                                          Text(
                                            "4 etoiles",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.amber),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        // edit border radius
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/sarakawa.jpeg",
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Hotel Sarakawa",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.map,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.language,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // category
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Categorie: ",
                                          ),
                                          Text(
                                            "4 etoiles",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.amber),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        "Plus de choix...",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 151, 178),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Card(
                        // edit border radius
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/onomo.jpg",
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Onomo Hotel",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.map,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.language,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // category
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Categorie: ",
                                          ),
                                          Text(
                                            "4 etoiles",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.amber),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        // edit border radius
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/ibis.jpg",
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Ibis Hotel",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.map,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.language,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // category
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Categorie: ",
                                          ),
                                          Text(
                                            "4 etoiles",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.amber),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        // edit border radius
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/sarakawa.jpeg",
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Hotel Sarakawa",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.map,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.language,
                                              size: 20.0,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 0, 151, 178),
                                              shape: CircleBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // category
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Categorie: ",
                                          ),
                                          Text(
                                            "4 etoiles",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.amber),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
