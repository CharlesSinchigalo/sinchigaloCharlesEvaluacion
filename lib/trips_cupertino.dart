import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips_page.dart';
import 'search_trips_page.dart';
import 'profile_trips_page.dart';

class TripsCupertino extends StatelessWidget {
  static final List<Widget> navigationWidget = [
    const HomeTripsPage(),
    const SearchTripsPage(),
    // const ProfileTripsPage(),
  ];

  const TripsCupertino({Key? key})
      : super(key: key); // Aquí es donde colocas el código corregido

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.white.withAlpha(70),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) => navigationWidget[index],
            );
          }),
    );
  }
}
