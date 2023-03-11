// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hmap/pages/bon_plans_page.dart';
import 'package:hmap/pages/categories_page.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_page.dart';

class HotelDetailsPage extends StatefulWidget {
  const HotelDetailsPage({super.key});

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  int _selectedIndex = 0;

  webSiteUrl(String url) async {
    // ignore: deprecated_member_use
    if (await launch(url.toString())) {
      // ignore: deprecated_member_use
      await launch(url.toString());
    } else {
      throw 'Could not launch $url';
    }
  }

  mapUrl(String mapUrl) async {
    // ignore: deprecated_member_use
    if (await launch(mapUrl.toString())) {
      // ignore: deprecated_member_use
      await launch(mapUrl.toString());
    } else {
      throw 'Could not launch $mapUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://res.cloudinary.com/dpofk8xy0/image/upload/v1678491444/hotels%20images/images_lvkbj6.jpg',
      'https://res.cloudinary.com/dpofk8xy0/image/upload/v1678491442/hotels%20images/t%C3%A9l%C3%A9chargement_4_xqzsip.jpg',
      'https://res.cloudinary.com/dpofk8xy0/image/upload/v1678491441/hotels%20images/t%C3%A9l%C3%A9chargement_3_lrvw1a.jpg',
      'https://res.cloudinary.com/dpofk8xy0/image/upload/v1678491440/hotels%20images/t%C3%A9l%C3%A9chargement_2_mp3lm4.jpg',
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
    return Scaffold(
        appBar: AppTopBar(),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            gap: 8,
            iconSize: 24,
            tabBackgroundColor: const Color.fromARGB(63, 125, 0, 215),
            activeColor: const Color.fromARGB(255, 126, 0, 215),
            padding: const EdgeInsets.all(16),
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              const GButton(
                icon: Icons.house_outlined,
                text: 'Accueil',
              ),
              const GButton(
                icon: Icons.check_circle_outline,
                text: 'Bon plans',
              ),
              const GButton(
                icon: Icons.style_outlined,
                text: 'Categories',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
                if (_selectedIndex == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BonPlansPage(),
                    ),
                  );
                } else if (_selectedIndex == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                } else if (_selectedIndex == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoriesPage(),
                    ),
                  );
                }
              });
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 255, 187, 2),
                    size: 20,
                  ),
                  const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 255, 187, 2),
                    size: 20,
                  ),
                  const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 255, 187, 2),
                    size: 20,
                  ),
                  const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 255, 187, 2),
                    size: 20,
                  ),
                  const Icon(
                    Icons.star_half,
                    color: Color.fromARGB(255, 255, 187, 2),
                    size: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "4.5",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 187, 2),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "(200)",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Image(
                image: AssetImage(
                  "assets/images/logo_onomo.png",
                ),
                width: 150,
                height: 150,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imageSliders,
              ),
              const SizedBox(
                height: 20,
              ),
              // url launcher
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        const url = 'https://www.onomohotels.com/';
                        webSiteUrl(url);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 126, 0, 215)),
                      ),
                      child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.web,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Site web"),
                          ]),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        const mapUrl =
                            'https://www.google.com/maps/place/ONOMO+Hotel+Lom%C3%A9/@6.1306535,1.2445182,15z/data=!4m9!3m8!1s0x1023e198964852c3:0x64536f10c0bc6f6c!5m2!4m1!1i2!8m2!3d6.1306535!4d1.2445182!16s%2Fg%2F11b7q8qz7f';
                        webSiteUrl(mapUrl);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 126, 0, 215)),
                      ),
                      child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Localisation"),
                          ]),
                    ),
                  ],
                ),
              ),
              // custoom paragraph in the middle
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const ReadMoreText(
                      'Situé en face de la plage du golfe de Guinée, cet hôtel contemporain se trouve à 5 km de l\'aéroport international Gnassigbé Eyadema et à 8 km de l\'université de Lomé. Les chambres modernes et élégantes sont dotées d\'une connexion Wi-Fi gratuite,d\'une télévision à écran plat et d\'un coffre-fort. Certaines disposent d\'un balcon.Une navette aéroport est proposée gratuitement. L\'hôtel dispose également d\'un bar, d\'un restaurant coloré avec terrasse, d\'une piscine extérieure et d\'une terrasse dans le jardin. Un parking est disponible.',
                      trimLines: 3,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Voir plus',
                      trimExpandedText: 'Voir moins',
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

// ignore: non_constant_identifier_names
AppBar AppTopBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      // ignore: prefer_const_literals_to_create_immutables
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(
          image: AssetImage("assets/images/hmap.png"),
          width: 40,
          height: 40,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "BIENVENU SUR ",
              style: TextStyle(
                color: Color.fromARGB(255, 31, 31, 31),
                fontSize: 15,
              ),
            ),
            const Text(
              "H-Map",
              style: TextStyle(
                color: Color.fromARGB(255, 126, 0, 215),
                fontSize: 15,
              ),
            ),
          ],
        ),
        const Icon(
          Icons.login,
          color: Color.fromARGB(255, 31, 31, 31),
          size: 25,
        ),
      ],
    ),
  );
}
