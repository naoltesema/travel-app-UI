import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newapps/personpage.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 20,
          ),
          child: GNav(
            color: const Color(0xff0202fa),
            activeColor: const Color(0xffe7e7e7),
            hoverColor: const Color(0xffe7e7e7),
            tabBorderRadius: 20,
            tabBackgroundColor: const Color(0xff0202fa),
            curve: Curves.easeOut,
            gap: 8,
            tabs: [
              const GButton(
                icon: Icons.home_outlined,
                text: 'Home',
                iconColor: Color(0xff0202fa),
              ),
              GButton(
                icon: Icons.person,
                text: 'profile',
                iconColor: const Color.fromRGBO(2, 2, 250, 1),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PersonPage(),
                  ),
                ),
              ),
              const GButton(
                icon: Icons.settings,
                text: 'setting',
                iconColor: Color(0xff0202fa),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const TravelBanner(),
            const TravelBanner(),
            const TravelBanner(),
          ],
        ),
      ),
    );
  }
}
