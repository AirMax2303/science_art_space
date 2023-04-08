import 'package:flutter/material.dart';
import 'package:science_art_space/pages/home_page.dart';
import 'package:science_art_space/pages/test_page.dart';

void main() {
  runApp(const ScienceArtSpace());
}

class ScienceArtSpace extends StatelessWidget {
  const ScienceArtSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestPage(),//HomePage(),
    );
  }
}


