import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:spotify_app/Screens/Home%20Screen/View/home_screen.dart';
import 'package:spotify_app/Screens/Librry/library_screeen.dart';
import 'package:spotify_app/Screens/Search%20Screen/search_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent, // Make Scaffold background transparent
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            // color: Colors.transparent, // Make Container background transparent
            ),
        child: GNav(
          color: Colors.black26,
          // backgroundColor: Colors.black26,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          tabBorderRadius: 18,
          activeColor: Colors.green,
          iconSize: 28,
          textSize: 15,
          haptic: true,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          duration: const Duration(milliseconds: 200),
          style: GnavStyle.oldSchool,
          tabs: const [
            GButton(
              icon: CupertinoIcons.home,
              iconColor: Colors.white,
              text: "Home",
            ),
            GButton(
              icon: CupertinoIcons.search,
              iconColor: Colors.white,
              text: "Search",
            ),
            GButton(
              icon: CupertinoIcons.archivebox,
              iconColor: Colors.white,
              text: "Library",
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
