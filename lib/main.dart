import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gweiland/pages/home_page.dart';

void main() {
  runApp(const GweilandApp());
}

class GweilandApp extends StatelessWidget {
  const GweilandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
    );
  }
}