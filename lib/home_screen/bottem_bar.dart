import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:groceries/home_screen/category_page.dart';
import 'package:groceries/home_screen/home_screen.dart';
import 'package:groceries/home_screen/my_bag.dart';


class BottemBar extends StatefulWidget {
  const BottemBar({super.key});

  @override
  State<BottemBar> createState() => _BottemBarState();
}

class _BottemBarState extends State<BottemBar> {
    int selectedIndex = 0;
    List<Widget> screens = [
    HomeScreen(),
    CategoryPage(),
    MyBag(),
   ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: screens[selectedIndex],
// Replace with your main content widget
    bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.blueAccent,
      items: [
        CurvedNavigationBarItem(
          child: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.search),
          label: 'Category',
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.chat_bubble_outline),
          label: 'My bag',
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.newspaper),
          label: 'Feed',
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.perm_identity),
          label: 'Personal',
        ),
      ],
      onTap: (index) {
          setState(() {
            selectedIndex = index;
          });

          //Handle button tap
        },
    ),
  );
  }
}