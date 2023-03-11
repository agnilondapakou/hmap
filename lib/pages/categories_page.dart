import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hmap/pages/Hotel_details.dart';
import 'package:hmap/pages/home_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int _selectedIndex = 2;
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
                    builder: (context) => const CategoriesPage(),
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
                      "Categories",
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
                      "retrouver les hotels par categories",
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
            // categories
            const Text(
              "Categories d'hotels",
              style: TextStyle(
                color: Color.fromARGB(255, 245, 161, 6),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 214, 214, 214),
              leading: const Icon(
                Icons.category,
                color: Color.fromARGB(255, 126, 0, 215),
              ),
              title: const Text(
                "Hotels 5 etoiles",
                style: TextStyle(
                  color: Color.fromARGB(255, 126, 0, 215),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 4.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ListTile(
                    title: const Text(
                      "Onomo Hotel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 126, 0, 215),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    subtitle: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        // hotel logo
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo_onomo.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Quote: ",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 126, 0, 215),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star_half,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HotelDetailsPage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 126, 0, 215),
                                ),
                              ),
                              child: const Text("Voir"),
                            ),
                          ],
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
            const SizedBox(
              height: 20,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 214, 214, 214),
              leading: const Icon(
                Icons.category,
                color: Color.fromARGB(255, 126, 0, 215),
              ),
              title: const Text(
                "Hotels 4 etoiles",
                style: TextStyle(
                  color: Color.fromARGB(255, 126, 0, 215),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 4.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ListTile(
                    title: const Text(
                      "Onomo Hotel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 126, 0, 215),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    subtitle: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        // hotel logo
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo_onomo.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Quote: ",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 126, 0, 215),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HotelDetailsPage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 126, 0, 215),
                                ),
                              ),
                              child: const Text("Voir"),
                            ),
                          ],
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
            const SizedBox(
              height: 20,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 214, 214, 214),
              leading: const Icon(
                Icons.category,
                color: Color.fromARGB(255, 126, 0, 215),
              ),
              title: const Text(
                "Hotels 3 etoiles",
                style: TextStyle(
                  color: Color.fromARGB(255, 126, 0, 215),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 4.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ListTile(
                    title: const Text(
                      "Onomo Hotel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 126, 0, 215),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    subtitle: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        // hotel logo
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo_onomo.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Quote: ",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 126, 0, 215),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HotelDetailsPage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 126, 0, 215),
                                ),
                              ),
                              child: const Text("Voir"),
                            ),
                          ],
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
            const SizedBox(
              height: 20,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 214, 214, 214),
              leading: const Icon(
                Icons.category,
                color: Color.fromARGB(255, 126, 0, 215),
              ),
              title: const Text(
                "Hotels 2 etoiles",
                style: TextStyle(
                  color: Color.fromARGB(255, 126, 0, 215),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 4.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ListTile(
                    title: const Text(
                      "Onomo Hotel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 126, 0, 215),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    subtitle: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        // hotel logo
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo_onomo.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Quote: ",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 126, 0, 215),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HotelDetailsPage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 126, 0, 215),
                                ),
                              ),
                              child: const Text("Voir"),
                            ),
                          ],
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
            const SizedBox(
              height: 20,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 214, 214, 214),
              leading: const Icon(
                Icons.category,
                color: Color.fromARGB(255, 126, 0, 215),
              ),
              title: const Text(
                "Hotels 1 etoiles",
                style: TextStyle(
                  color: Color.fromARGB(255, 126, 0, 215),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 4.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ListTile(
                    title: const Text(
                      "Onomo Hotel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 126, 0, 215),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    subtitle: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        // hotel logo
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo_onomo.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Quote: ",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 126, 0, 215),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 245, 161, 6),
                                  size: 15,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HotelDetailsPage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 126, 0, 215),
                                ),
                              ),
                              child: const Text("Voir"),
                            ),
                          ],
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
            const SizedBox(
              height: 20,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 214, 214, 214),
              leading: const Icon(
                Icons.category,
                color: Color.fromARGB(255, 126, 0, 215),
              ),
              title: const Text(
                "Autres hotels",
                style: TextStyle(
                  color: Color.fromARGB(255, 126, 0, 215),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 4.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ListTile(
                    title: const Text(
                      "Onomo Hotel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 126, 0, 215),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    subtitle: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        // hotel logo
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo_onomo.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HotelDetailsPage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 126, 0, 215),
                                ),
                              ),
                              child: const Text("Voir"),
                            ),
                          ],
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
