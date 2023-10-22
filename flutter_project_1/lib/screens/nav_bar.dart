import 'package:flutter/material.dart';
import 'package:flutter_project_1/screens/home_screen.dart';
import 'package:flutter_project_1/screens/order_screen.dart';
import 'package:flutter_project_1/screens/profile_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<MyBottomNavBar> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    OrderScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: Color(0xFFD35400),
        elevation: 0,
      ),
      body: screens[selectedIndex],
    );
  }
}
