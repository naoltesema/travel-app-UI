import 'package:flutter/material.dart';
import 'package:newapps/homepage.dart';
import 'package:typewritertext/v3/typewriter.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0202fa),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            TypeWriter.text(
              'Hello welcome to buddy'
              ' Where you find awesome travel companions ',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
                fontSize: 30,
              ),
              duration: const Duration(milliseconds: 100),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              child: const Text('get started'),
            )
          ],
        ),
      ),
    );
  }
}
