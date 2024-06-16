import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0202fa),
      body: Text(
        'this is profile screen',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
