/*
Question 3: Custom Text Widget with Imported Fonts and Semantics

Task:

Create a custom Text widget that utilizes imported Google fonts. Also, use the Semantics widget to describe the text for accessibility purposes.
 */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: YourCustomTextWidget(),
    );
  }
}

class YourCustomTextWidget extends StatelessWidget {
  const YourCustomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: semanticsForAText()),
        ],
      )),
    );
  }

  Semantics semanticsForAText() {
    return Semantics(
      label: 'Your Semantic Description',
      child: Text(
        'Hello!',
        style: GoogleFonts.aBeeZee(
            textStyle: const TextStyle(
          fontSize: 20,
        )),
      ),
    );
  }
}
