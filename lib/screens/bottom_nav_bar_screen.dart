import 'package:flutter/material.dart';
import 'package:learn_nova/const/all_colors/all_colors.dart';
import 'package:learn_nova/screens/home_screen.dart';
import 'package:learn_nova/screens/light_bulb_screen.dart';
import 'package:learn_nova/screens/menu_book_screen.dart';
import 'package:learn_nova/screens/profile_screen.dart';
import 'package:learn_nova/screens/video_library_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    VideoLibraryScreen(),
    LightBulbScreen(),
    MenuBookScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: AllColors.secondaryColors,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Iconsdot(Icons.home, 0), label: ''),
          BottomNavigationBarItem(
            icon: Iconsdot(Icons.video_library, 1),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Iconsdot(Icons.lightbulb_outline, 2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Iconsdot(Icons.menu_book_outlined, 3),
            label: '',
          ),
          BottomNavigationBarItem(icon: Iconsdot(Icons.person, 4), label: ''),
        ],
      ),
    );
  }

  Widget Iconsdot(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 28,
          color: isSelected ? AllColors.secondaryColors : Colors.grey,
        ),
        SizedBox(height: 4),
        isSelected
            ? Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: AllColors.secondaryColors,
                  shape: BoxShape.circle,
                ),
              )
            : SizedBox(height: 6),
      ],
    );
  }
}
