import 'package:alumni_app/View/Alumni/Home/widget/profile.dart';
import 'package:alumni_app/View/Student/Home/widget/search.dart';
import 'package:alumni_app/View/Student/Home/widget/status.dart';
import 'package:flutter/material.dart';

import '../home.dart';


class NavigationBarStudScreen extends StatefulWidget {
  const NavigationBarStudScreen({super.key});

  @override
  State<NavigationBarStudScreen> createState() =>
      _NavigationBarStudScreenState();
}

class _NavigationBarStudScreenState extends State<NavigationBarStudScreen> {
  int currentIndex = 0;
  final List Screens = [
    const Home1(),
    const status1(),
    const SearchScreen(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[250],
        elevation: 5,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes),
              label: "Status",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.black)
        ],
      ),
    );
  }
}
