import 'package:figamtoflutter/screens/loginandsignup_process/login_screen.dart';
import 'package:figamtoflutter/screens/loginandsignup_process/signup_screen.dart';
import 'package:figamtoflutter/screens/onboarding_screen/first_screen.dart';
import 'package:flutter/material.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  // Track the currently selected tab
  int _selectedIndex = 0;

  // Define the content for each tab
  final List<Widget> _pages = const [
    FirstOnBoardingScreen(),
    LoginScreen(),
    SignUpScteen(),
    FirstOnBoardingScreen(),
  ];

  // Handle tab selection
  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: const [
              // BottomNavigationBarItems

              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat, color: Colors.black),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black),
                activeIcon: Text('Iam Active'),
                label: 'Person',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onTabSelected,
          ),
        ),
      ),
    );
  }
}
