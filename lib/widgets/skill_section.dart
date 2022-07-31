import 'package:flutter/material.dart';

import 'skill.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({Key? key}) : super(key: key);

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
          margin: const EdgeInsets.only(top: 10),
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
            children: const [
              Skill(
                imagePath: "assets/images/flutter.png",
                skillName: "Flutter",
              ),
              Skill(
                imagePath: "assets/images/firebase.png",
                skillName: "Firebase",
              ),
              Skill(
                imagePath: "assets/images/js.png",
                skillName: "JavaScript",
              ),
              Skill(
                imagePath: "assets/images/css.png",
                skillName: "CSS 3",
              ),
              Skill(
                imagePath: "assets/images/html.png",
                skillName: "HTML 5",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
