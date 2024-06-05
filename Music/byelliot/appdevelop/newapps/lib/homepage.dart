import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newapps/personpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 20,
          ),
          child: GNav(
            color: Color(0xff0202fa),
            activeColor: Color(0xffe7e7e7),
            hoverColor: Color(0xffe7e7e7),
            tabBorderRadius: 20,
            tabBackgroundColor: Color(0xff0202fa),
            curve: Curves.easeOut,
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
                iconColor: Color(0xff0202fa),
              ),
              GButton(
                icon: Icons.person_2_outlined,
                text: 'Profile',
                iconColor: Color(0xff0202fa),
              ),
              GButton(
                icon: Icons.settings,
                text: 'Setting',
                iconColor: Color.fromRGBO(2, 2, 250, 1),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PersonPage(),
              ),
            );
          },
          child: const Text('test page'),
        ),
      ),
    );
  }
}
