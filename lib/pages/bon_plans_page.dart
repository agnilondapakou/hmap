import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hmap/pages/categories_page.dart';
import 'package:hmap/pages/home_page.dart';

class BonPlansPage extends StatefulWidget {
  const BonPlansPage({super.key});

  @override
  State<BonPlansPage> createState() => _BonPlansPageState();
}

class _BonPlansPageState extends State<BonPlansPage> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 10, right: 10),
              decoration: const BoxDecoration(
                // gradien de couleur
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 126, 0, 215),
                    Color.fromARGB(255, 245, 161, 6),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              // ignore: prefer_const_constructors
              child: Center(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Bons plans",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Arial",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Trouvez votre hotel en fonction de vos criteres (Prix, localisation, etc...)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Arial",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // search input
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 15,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 126, 0, 215),
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Rechercher un hotel",
                    style: TextStyle(
                      color: Color.fromARGB(255, 126, 0, 215),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // dropdown button
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 126, 0, 215),
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Les moins chers",
                    style: TextStyle(
                      color: Color.fromARGB(255, 245, 161, 6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Les plus chers",
                    style: TextStyle(
                      color: Color.fromARGB(255, 245, 161, 6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Les plus proches de vous",
                    style: TextStyle(
                      color: Color.fromARGB(255, 245, 161, 6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                    const HotelCardWidget(),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
