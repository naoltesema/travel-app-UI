import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newapps/profilepage.dart';
import 'package:newapps/widgets/communitypage.dart';
import 'package:pedometer/pedometer.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
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
                  builder: (context) => const HomePage(),
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
                text: 'Profle',
                iconColor: const Color(0xff0202fa),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                )),
              )
            ],
          ),
        ),
      ),
      body: const SafeArea(
          child: Column(
        children: [
          Text('welcome buddy'),
          SizedBox(height: 20),
          Row(
            children: [
              Text('step counter'),
              SizedBox(
                width: 20,
              ),
              Text('walk hour'),
              SizedBox(
                width: 20,
              ),
              Text('calorie')
            ],
          ),
        ],
      )),
    );
  }
}
