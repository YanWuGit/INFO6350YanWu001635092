import 'package:flutter/material.dart';
import 'heros.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Heros(), // Setting the entry point to BasicHeroAnimation
    );
  }
}

// No. I have one hero widget in basic_hero_animation.dart and one in standard_hero_animation.dart. How do I use a third dart file to put these two widgets on the same page? Two hero widgets should be next to each other