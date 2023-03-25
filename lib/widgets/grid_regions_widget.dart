import 'package:flutter/material.dart';
import 'package:hmap/pages/maritim_list.dart';
import 'package:hmap/pages/maritim_map_page.dart';
import 'package:hmap/pages/plateau_list.dart';

import '../pages/kara_list.dart';

// ignore: must_be_immutable
class GridRegionsWidget extends StatelessWidget {
  Items item1 = new Items(
    title: "Maritime",
    // subtitle: "Les meilleurs hotels du pays",
    img: "assets/images/aneho.jpg",
    mapRoute: MaritimMapPage(),
    listRoute: MaritimHotelListPage(),
  );

  Items item2 = new Items(
    title: "Plateaux",
    // subtitle: "Hotels a proximité",
    img: "assets/images/togo.png",
    mapRoute: PlateauListPage(),
    listRoute: PlateauListPage(),
  );

  Items item3 = new Items(
    title: "Centrale",
    // subtitle: "Fil d'actualité des hotels",
    img: "assets/images/togo.png",
    mapRoute: MaritimMapPage(),
    listRoute: MaritimMapPage(),
  );

  Items item4 = new Items(
    title: "Kara",
    // subtitle: "Meilleurs restaurants de la localite",
    img: "assets/images/togo.png",
    mapRoute: KaraListPage(),
    listRoute: KaraListPage(),
  );

  Items item5 = new Items(
    title: "Savane",
    // subtitle: "Les sites touristiques du pays",
    img: "assets/images/togo.png",
    mapRoute: MaritimMapPage(),
    listRoute: MaritimMapPage(),
  );

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
        crossAxisCount: 1,
        childAspectRatio: 3,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    // Color.fromARGB(115, 0, 151, 178),
                    Color.fromARGB(255, 0, 151, 178),
                    Color.fromARGB(115, 0, 151, 178),
                    Color.fromARGB(255, 0, 151, 178),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data.title,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => data.mapRoute,
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/images/location.png",
                                      ),
                                      width: 30,
                                      height: 30,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "Voir la carte",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => data.listRoute,
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/images/list.png",
                                      ),
                                      width: 30,
                                      height: 30,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "Liste",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
  Widget mapRoute;
  Widget listRoute;
  Items(
      {required this.title,
      // required this.subtitle,
      required this.img,
      required this.mapRoute,
      required this.listRoute});
}
