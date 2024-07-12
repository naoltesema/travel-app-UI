import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0202fa),
      body: Text(
        'this is profile screen',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
