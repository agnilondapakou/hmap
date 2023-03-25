import 'package:flutter/material.dart';
import 'package:hmap/pages/hotels_regions.dart';

import '../pages/login_page.dart';

// ignore: must_be_immutable
class GridDashboardWidget extends StatelessWidget {
  Items item1 = new Items(
    title: "Hotels",
    subtitle: "Les meilleurs hotels du pays",
    img: "assets/images/hotelbtn.png",
    route: HotelsRegionsPage(),
  );

  Items item2 = new Items(
    title: "Localisations",
    subtitle: "Hotels a proximité",
    img: "assets/images/location.png",
    route: LoginPage(),
  );

  Items item3 = new Items(
    title: "Annonces",
    subtitle: "Fil d'actualité des hotels",
    img: "assets/images/news.png",
    route: LoginPage(),
  );

  Items item4 = new Items(
    title: "Restaurants",
    subtitle: "Meilleurs restaurants de la localite",
    img: "assets/images/resto.png",
    route: LoginPage(),
  );

  Items item5 = new Items(
    title: "Sites touristiques",
    subtitle: "Les sites touristiques du pays",
    img: "assets/images/sites.png",
    route: LoginPage(),
  );

  Items item6 = new Items(
    title: "Historique",
    subtitle: "Vos hotels préférés",
    img: "assets/images/love.png",
    route: LoginPage(),
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
    ];

    return Flexible(
      child: GridView.count(
        crossAxisCount: 2,
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
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: TextStyle(
                      color: Color.fromARGB(255, 79, 79, 79),
                      fontSize: 10,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => data.route),
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
  String subtitle;
  String img;
  Widget route;
  Items(
      {required this.title,
      required this.subtitle,
      required this.img,
      required this.route});
}
