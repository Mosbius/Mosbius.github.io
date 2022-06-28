import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_page/coolers.dart';
import 'package:profile_page/home.dart';
import 'package:velocity_x/velocity_x.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
     theme:ThemeData(
      primarySwatch: Colors.deepOrange,
      accentColor: Coolers.accentColor,
      textTheme: GoogleFonts.poppinsTextTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,

     ),
     home:Home(),
    );
  }
}
