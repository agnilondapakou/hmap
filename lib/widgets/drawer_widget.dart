// ignore_for_file: type_init_formals
import 'package:flutter/material.dart';
import 'package:hmap/widgets/drawer_list_title.dart';

import '../pages/hotels_regions.dart';
import '../pages/login_page.dart';
import 'my_header_drawer.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MyHeaderDrawer(),
              Container(
                child: Column(
                  children: [
                    DrawerListTitle(
                      route: HotelsRegionsPage(),
                      title: "Hotels",
                      icon: Icon(Icons.house_sharp),
                    ),
                    DrawerListTitle(
                      route: HotelsRegionsPage(),
                      title: "Localisation",
                      icon: Icon(Icons.location_on),
                    ),
                    DrawerListTitle(
                      route: HotelsRegionsPage(),
                      title: "Annonces",
                      icon: Icon(Icons.new_releases),
                    ),
                    DrawerListTitle(
                      route: HotelsRegionsPage(),
                      title: "restaurants",
                      icon: Icon(Icons.restaurant),
                    ),
                    DrawerListTitle(
                      route: HotelsRegionsPage(),
                      title: "Sites touristiques",
                      icon: Icon(Icons.run_circle),
                    ),
                    DrawerListTitle(
                      route: HotelsRegionsPage(),
                      title: "Historique",
                      icon: Icon(Icons.history),
                    ),
                    DrawerListTitle(
                      route: LoginPage(),
                      title: "Connexion",
                      icon: Icon(Icons.login),
                    ),
                    DrawerListTitle(
                      route: LoginPage(),
                      title: "Deconnexion",
                      icon: Icon(Icons.logout),
                    ),
                    DrawerListTitle(
                      route: LoginPage(),
                      title: "A propos",
                      icon: Icon(Icons.info),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
