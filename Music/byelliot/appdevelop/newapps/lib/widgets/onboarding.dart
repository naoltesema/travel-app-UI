import 'package:flutter/material.dart';
import 'package:newapps/homepage.dart';
import 'package:typewritertext/v3/typewriter.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(colors: [
              Color(0xff0202fa),
              Colors.black,
            ]).createShader(bounds),
            child: TypeWriter.text(
              'Hello welcome to buddy'
              ' Where you find awesome travel companions ',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
                fontSize: 40,
              ),
              duration: const Duration(milliseconds: 100),
            ),
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
            child: const Text(
              'get started',
            ),
          )
        ],
      ),
    );
  }
}
//