import 'package:flutter/material.dart';

class Botnav extends StatefulWidget {
  const Botnav({super.key});

  @override
  State<Botnav> createState() => _BotnavState();
}

int _currentIndex = 0;

final screen = [
  Center(
    child: Text("INI HOME"),
  ),
  Center(
    child: Text("INI SEARCH"),
  ),
  Center(
    child: Text("INI NOTIF"),
  ),
  Center(
    child: Text("INI PROFILE"),
  ),
];

class _BotnavState extends State<Botnav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          selectedLabelStyle: TextStyle(fontSize: 12, color: Colors.black),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notif",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profil",
            ),
          ]),
    );
  }
}