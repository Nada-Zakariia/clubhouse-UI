import 'package:club_house/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:club_house/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: kBackgroundColor),
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
        accentColor: kAccentColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
