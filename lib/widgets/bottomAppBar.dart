import 'package:flutter/material.dart';
import 'package:hmap/pages/dashboard_page.dart';

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
        }
      },
      selectedItemColor: Color.fromARGB(255, 0, 151, 178),
    );
  }
}
