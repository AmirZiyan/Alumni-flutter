import 'package:alumni_app/View/Alumni/Home/widget/profile.dart';
import 'package:alumni_app/View/Alumni/Home/widget/search.dart';
import 'package:alumni_app/View/Alumni/Home/widget/status.dart';
import 'package:flutter/material.dart';

import '../home.dart';


class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => HomeScreenAlumniState();
}

class HomeScreenAlumniState extends State<NavigationBarScreen> {
  int currentIndex = 0;
  final List Screens = [
    const Home(),
    const Status(), const Search(),
    const Profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 5,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
          print(currentIndex);
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes),
              label: 'Status',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
