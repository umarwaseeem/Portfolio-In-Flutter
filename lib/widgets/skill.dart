import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  final String imagePath;
  final String skillName;

  const Skill({Key? key, required this.imagePath, required this.skillName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        const SizedBox(height: 16),
        Text(
          skillName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
