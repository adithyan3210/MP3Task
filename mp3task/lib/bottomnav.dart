import 'package:flutter/material.dart';
import 'package:mp3task/homescreen.dart';
import 'package:mp3task/musicscreen.dart';
import 'package:mp3task/profilescreeen.dart';
import 'package:mp3task/searchscreeen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int touch = 0;
  List navigationPage = [
    const MyHomePage(),
    const Search(),
    const Musicapage(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPage.elementAt(touch),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: touch,
        onTap: (index) {
          setState(() {
            touch = index;
          });
        },
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(115, 255, 255, 255),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Serach',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined),
              label: 'Music',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
              backgroundColor: Colors.grey),
        ],
      ),
    );
  }
}
