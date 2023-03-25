import 'package:flutter/material.dart';
import 'package:hmap/pages/dashboard_page.dart';
import 'package:hmap/pages/profile_page.dart';
import 'package:hmap/widgets/search_hotel.dart';

import '../pages/hotels_list.dart';

// ignore: must_be_immutable
class BottomAppBarWidget extends StatelessWidget {
  late int index = 0;
  BottomAppBarWidget({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // elevation: 5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Hotels',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: 'Recherche',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Profil',
        ),
      ],
      currentIndex: index,
      unselectedItemColor: Colors.grey,
      onTap: (value) {
        index = value;
        print(index);
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DashboardPage(),
            ),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HotelsListPage(),
            ),
          );
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchHotelPage(),
            ),
          );
        } else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilPage(),
            ),
          );
        }
      },
      selectedItemColor: Color.fromARGB(255, 0, 151, 178),
    );
  }
}
