
import 'package:flutter/material.dart';
import 'package:flutter_assignment2/profile_page.dart';
import 'package:flutter_assignment2/search_page.dart';

import 'home_page.dart';

class ButtonNavPage extends StatefulWidget {
  const ButtonNavPage({super.key});

  @override
  State<ButtonNavPage> createState() => _ButtonNavPageState();
}

class _ButtonNavPageState extends State<ButtonNavPage> {
  int _selectedIndex = 0;
  final _pages = [
    const HomePage(),
    const SearchPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min, // keep compact
            children: [
              Icon(Icons.star, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'Creative app',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
