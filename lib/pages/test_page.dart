import 'package:flutter/material.dart';
import 'package:science_art_space/pages/home_page.dart';
import 'package:science_art_space/pages/partners_page.dart';
import 'package:science_art_space/pages/statute_page.dart';
import 'experts_page.dart';
import 'organizers_page.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final simpleText = TextStyle(fontSize: mediaQuery.size.width / 60);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text('HomePage')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StatutePage()),
                  );
                },
                child: const Text('Положение')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExpertsPage()),
                  );
                },
                child: const Text('Эксперты')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrganizersPage()),
                  );
                },
                child: const Text('Организаторы')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PartnersPage()),
                  );
                },
                child: const Text('Партнёры')),
          ],
        ),
      ),
    );
  }
}
