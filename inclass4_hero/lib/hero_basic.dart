import 'package:flutter/material.dart';

class Hero1Basic extends StatelessWidget {
  final String tag;
  final String imagePath;
  final double width;
  final double expandedWidth;
  final double expandedHeight;

  const Hero1Basic({
    super.key,
    required this.tag,
    required this.imagePath,
    this.width = 100.0,
    this.expandedWidth = 300.0,
    this.expandedHeight = 300.0,
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
                    child: SizedBox(
                      width: expandedWidth,
                      height: expandedHeight,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
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
        child: SizedBox(
          width: width,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}