import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) :super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 14),
      child: GNav(
        tabBackgroundColor: Color.fromARGB(1000, 110, 190, 129),
        gap: 9,
        onTabChange: (index) {
          print(index);
        },
        padding: EdgeInsets.all(12),
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
            text: 'Home',
            ),
          GButton(
            icon: Icons.search,
            text: 'Search',
            ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Favorite',
          ),
          GButton(
            icon: Icons.person_outlined,
            text: 'Profile',
            )
        ],
      ),
      ),
      ),
    );
  }

}