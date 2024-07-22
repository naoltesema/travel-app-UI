import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newapps/profilepage.dart';
import 'package:newapps/widgets/communitypage.dart';
import 'package:logger/logger.dart';

class HomePage extends StatelessWidget {
  final String stepCountValue;

  const HomePage({super.key, required this.stepCountValue});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Buddy',
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
//home page
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
                iconColor: const Color(0xff0202fa),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      HomePage(stepCountValue: stepCountValue),
                )),
              ),
//community
              GButton(
                icon: Icons.group_outlined,
                text: 'Community',
                iconColor: const Color(0xff0202fa),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CommunityPage(),
                )),
              ),
//profile
              GButton(
                icon: Icons.person_outlined,
                text: 'Profile',
                iconColor: const Color(0xff0202fa),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                )),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [],
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff0202fa),
              ),
              child: const Text(
                'total step',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'step counter $stepCountValue',
                  style: const TextStyle(color: Color(0xff0202fa)),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'walk hour',
                  style: TextStyle(color: Color(0xff0202fa)),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'calorie',
                  style: TextStyle(color: Color(0xff0202fa)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
