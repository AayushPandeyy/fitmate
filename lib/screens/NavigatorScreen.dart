import 'package:fitmate/screens/ChatScreen.dart';
import 'package:fitmate/screens/DiaryScreen.dart';
import 'package:fitmate/screens/HomePage.dart';
import 'package:fitmate/screens/MoreOptionsScreen.dart';
import 'package:fitmate/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    DiaryScreen(),
    SizedBox(),
    ChatScreen(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff5faff),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            if (index == 2) {
              debugPrint("Add data button tapped");
            }
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.shade600,
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          elevation: 10,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Diary",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_outlined),
              label: "Add",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "More",
            ),
          ],
        ),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _pages[_selectedIndex],
        ),
        floatingActionButton: _selectedIndex == 2
            ? FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () => debugPrint('FAB Tapped'),
                child: const Icon(Icons.add, color: Colors.white),
              )
            : null,
      ),
    );
  }
}
