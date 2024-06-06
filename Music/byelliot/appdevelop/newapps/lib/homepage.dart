import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:newapps/widgets/travelbanner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'buddy',
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: const [
            TravelBanner(),
          ],
          //travel banner

          //row 2 card

          //heading text

          //listtiles
        ),
      ),
    );
  }
}
