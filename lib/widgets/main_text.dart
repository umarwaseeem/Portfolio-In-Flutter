import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  final Gradient _gradient = const LinearGradient(
    colors: [
      Color.fromRGBO(204, 255, 0, 1),
      Color.fromRGBO(255, 168, 0, 1),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 264.5, vertical: 98),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Meet your next ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 84,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => _gradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: const Text(
                  "creative",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 84,
                  ),
                ),
              ),
              const Text(
                " developer",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 84,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
