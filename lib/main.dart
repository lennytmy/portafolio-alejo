import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portafolio_a/globals/colors-app.dart';
import 'package:portafolio_a/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.black),
      ).copyWith(scaffoldBackgroundColor: backgroundColorApp),
      home: const HomePage(),
    );
  }
}
