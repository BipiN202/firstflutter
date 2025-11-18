import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/image/img1.jpg',
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,
        
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        Text('title'),
      ],
    );
  }
}
