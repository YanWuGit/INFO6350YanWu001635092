import 'package:flutter/material.dart';

class Hero2Standard extends StatelessWidget {
  final String tag;
  final String imagePath;
  final double width;
  final double expandedWidth;
  final Widget Function(BuildContext, Animation<double>, HeroFlightDirection, BuildContext, BuildContext)? flightShuttleBuilder;

  const Hero2Standard({
    super.key,
    required this.tag,
    required this.imagePath,
    this.width = 100.0,
    this.expandedWidth = 300.0,
    this.flightShuttleBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: Text('$tag Page'),
                ),
                body: Center(
                  child: Hero(
                    tag: tag,
                    flightShuttleBuilder: flightShuttleBuilder,
                    child: SizedBox(
                      width: expandedWidth,
                      child: Image.asset(imagePath),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
      child: Hero(
        tag: tag,
        flightShuttleBuilder: flightShuttleBuilder,
        child: SizedBox(
          width: width,
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}