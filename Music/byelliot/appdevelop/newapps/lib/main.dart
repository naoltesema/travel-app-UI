import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newapps/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const HomePage(),
        theme: ThemeData(
          useMaterial3: true,
          textTheme: GoogleFonts.ubuntuMonoTextTheme(),
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff0202fa)),
        ));
  }
}
