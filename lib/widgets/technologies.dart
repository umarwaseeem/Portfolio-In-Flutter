import 'package:flutter/material.dart';

import 'contact_section.dart';
import 'experience_section.dart';
import 'footer.dart';
import 'skill_section.dart';

class Technologies extends StatelessWidget {
  const Technologies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SkillSection(),
        ExperienceSection(),
        ContactSection(),
        Footer(),
      ],
    );
  }
}
