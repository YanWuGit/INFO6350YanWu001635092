import 'package:flutter/material.dart';

class BasicHeroAnimation extends StatelessWidget {
  const BasicHeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap:() {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Jason Page'),
                    ),
                    body: Center(
                      child:Hero(
                        tag: 'jason',
                        child: SizedBox(
                          width: 300,
                          child: Image.asset('images/jason.jpg'),
                        ),
                      )
                    ),
                  );
                }
              )
            );
          },
          // Main route
          child: Hero(
            tag: 'jason',
            child:SizedBox(
              width: 100,
                child: Image.asset(
                  'images/jason.jpg',
              )
            ),
          ),
        ),
      ),
    );
  }
}