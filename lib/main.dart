import 'package:cards/settings/cards_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Settings',
      theme: ThemeData(
          primaryColor: Colors.white,
          primaryColorDark: Colors.black,
          accentColor: Colors.black54,
          textTheme: TextTheme(
              headline6: GoogleFonts.roboto().copyWith(fontSize: 20.0, fontWeight: FontWeight.w500),
              subtitle1: GoogleFonts.roboto().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400),
              subtitle2:
                  GoogleFonts.roboto().copyWith(fontSize: 14.0, fontWeight: FontWeight.w200))),
      home: CardsPage(),
    );
  }
}
