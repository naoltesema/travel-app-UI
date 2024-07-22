import 'package:flutter/material.dart';
import 'package:newapps/homepage.dart';
import 'package:typewritertext/v3/typewriter.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 200,
              child: TypeWriter.text(
                'Hello buddy, '
                'welcome to buddy Where you find awesome hiking companions Where you find awesome hiking companions',
                style: const TextStyle(
                  color: Color(0xff0202fa),
                  fontWeight: FontWeight.w100,
                  fontSize: 30,
                ),
                duration: const Duration(milliseconds: 100),
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xff0202fa))),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(
                  stepCountValue: '',
                ),
              ),
            ),
            child: const Text(
              'get started',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
