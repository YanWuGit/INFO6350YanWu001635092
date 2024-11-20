import 'package:flutter/material.dart';
import 'hero_basic.dart';
import 'hero_standard.dart';


class Heros extends StatelessWidget {
  const Heros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Hero1Basic(
              tag: 'hero1',
              imagePath: 'images/jason.jpg',
            ),
            SizedBox(height: 20),
            Hero2Standard(
              tag: 'hero2',
              imagePath: 'images/jason.jpg',
              flightShuttleBuilder: (flightContext, animation, flightDirection, fromHeroContext, toHeroContext) {
                return RotationTransition(
                  turns: animation,
                  child: toHeroContext.widget,
                );
              },
            ),
            SizedBox(height: 20),
            Hero1Basic(
              tag: 'hero3',
              imagePath: 'images/jason.jpg',
              expandedWidth: 500,
              expandedHeight: 200,
            )
          ],
        ),
      ),
    );
  }
}