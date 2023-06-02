import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokedex/screens/favorites_screen/favorite_screen.dart';

class HomeScreenDrawer extends StatefulWidget {
  const HomeScreenDrawer({Key? key}) : super(key: key);

  @override
  State<HomeScreenDrawer> createState() => _HomeScreenDrawerState();
}

class _HomeScreenDrawerState extends State<HomeScreenDrawer> {
  int id = 1;

  void refreshData() {
    id++;
  }

  FutureOr onGoBack(dynamic value) {
    refreshData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 26
                  ),
                ),
            ),
          ),
          ListTile(
            title: const Text('Favorites'),
            onTap: () {
              Navigator.pop(context);
              //Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesScreen()));
              //Route route = MaterialPageRoute(builder: (context) => FavoritesScreen());
              //Navigator.push(context, route);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => FavoritesScreen()));
            },
          ),
        ],
      ),
    );
  }
}
