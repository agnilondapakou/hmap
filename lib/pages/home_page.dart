import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hmap/pages/Hotel_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopBar(),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: GNav(
          gap: 8,
          iconSize: 24,
          tabBackgroundColor: Color.fromARGB(63, 125, 0, 215),
          activeColor: Color.fromARGB(255, 126, 0, 215),
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: Icons.house_outlined,
              text: 'Accueil',
            ),
            GButton(
              icon: Icons.check_circle_outline,
              text: 'Bon plans',
            ),
            GButton(
              icon: Icons.style_outlined,
              text: 'Categories',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 10, right: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 126, 0, 215),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              // ignore: prefer_const_constructors
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "Hotels-Map",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.add_location_alt_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                          const Icon(
                            Icons.arrow_circle_right_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          const Icon(
                            Icons.maps_home_work,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Trouvez l'hotel qui vous convient le mieux",
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
                    "Hotels populaires",
                    style: TextStyle(
                      color: Color.fromARGB(255, 126, 0, 215),
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
                    "Hotels recommandés",
                    style: TextStyle(
                      color: Color.fromARGB(255, 126, 0, 215),
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

class HotelCardWidget extends StatelessWidget {
  const HotelCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage("assets/images/onomo.jpg"),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 5,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Hotel Onomo",
            style: TextStyle(
              color: Color.fromARGB(255, 126, 0, 215),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Boulevard Du Mono, Lomé",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
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
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HotelDetailsPage(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 126, 0, 215),
              ),
            ),
            child: const Text(
              "Voir plus",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
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
          image: AssetImage("assets/images/logo.jpg"),
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
