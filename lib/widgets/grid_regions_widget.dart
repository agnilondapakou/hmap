import 'package:flutter/material.dart';
import 'package:hmap/pages/home_page.dart';
import 'package:hmap/pages/login_page.dart';

class GridRegionsWidget extends StatelessWidget {
  Items item1 = new Items(
    title: "Maritime",
    // subtitle: "Les meilleurs hotels du pays",
    img: "assets/images/togo.png",
    route: LoginPage(),
  );

  Items item2 = new Items(
      title: "Plateaux",
      // subtitle: "Hotels a proximité",
      img: "assets/images/togo.png",
      route: LoginPage());

  Items item3 = new Items(
      title: "Centrale",
      // subtitle: "Fil d'actualité des hotels",
      img: "assets/images/togo.png",
      route: LoginPage());

  Items item4 = new Items(
      title: "Kara",
      // subtitle: "Meilleurs restaurants de la localite",
      img: "assets/images/togo.png",
      route: LoginPage());

  Items item5 = new Items(
      title: "Savane",
      // subtitle: "Les sites touristiques du pays",
      img: "assets/images/togo.png",
      route: LoginPage());

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
    ];

    return Flexible(
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    data.title.toUpperCase(),
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => data.route,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String title;
  // String subtitle;
  String img;
  Widget route;
  Items(
      {required this.title,
      // required this.subtitle,
      required this.img,
      required this.route});
}
