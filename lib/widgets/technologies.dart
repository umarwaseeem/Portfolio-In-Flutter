import 'package:flutter/material.dart';

class Technologies extends StatelessWidget {
  const Technologies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 120),
          child: const Text(
            "Technologies",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: const Text(
            "I'm familiar with ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 64, left: 224, right: 224),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/flutter.png"),
                  const SizedBox(height: 16),
                  const Text(
                    "Flutter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/images/firebase.png"),
                  const SizedBox(height: 16),
                  const Text(
                    "Firebase",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/images/js.png"),
                  const SizedBox(height: 16),
                  const Text(
                    "JavaScript",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/images/css.png"),
                  const SizedBox(height: 16),
                  const Text(
                    "CSS 3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/images/html.png"),
                  const SizedBox(height: 16),
                  const Text(
                    "HTML 5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
