import 'package:flutter/material.dart';
import 'package:portfolio_website/colors/colors.dart';
import 'package:portfolio_website/widgets/experience_card.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 148),
      child: Column(
        children: [
          const Text(
            "Experience",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text(
              "Past Experiences",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 200, right: 200, top: 64),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExperienceCard(
                  545,
                  345,
                  color: button1Color,
                  title: "GDSC - Google Developer Student Club",
                  subtitle: "Vice Head Of Video Editing Team",
                  description:
                      " Nulla facilisi. Donec in diam eget quam luctus dictum. Curabitur lobortis tincidunt massa, sit amet aliquet quam. Donec congue ipsum urna, vitae blandit sapien porttitor non. Sed euismod tempus orci ac aliquet.",
                ),
                ExperienceCard(
                  545,
                  345,
                  color: button2Color,
                  title: "GDSC - Google Developer Student Club",
                  subtitle: "Vice Head Of Video Editing Team",
                  description:
                      " Nulla facilisi. Donec in diam eget quam luctus dictum. Curabitur lobortis tincidunt massa, sit amet aliquet quam. Donec congue ipsum urna, vitae blandit sapien porttitor non. Sed euismod tempus orci ac aliquet.",
                ),
              ],
            ),
          ),
          // expanded card
          Container(
            margin: const EdgeInsets.only(
                left: 200, right: 200, top: 64, bottom: 148),
            child: ExperienceCard(
              null,
              null,
              color: button3Color,
              title: "GDSC - Google Developer Student Club",
              subtitle: "Vice Head Of Video Editing Team",
              description:
                  " Nulla facilisi. Donec in diam eget quam luctus dictum. Curabitur lobortis tincidunt massa, sit amet aliquet quam. Donec congue ipsum urna, vitae blandit sapien porttitor non. Sed euismod tempus orci ac aliquet.",
            ),
          ),
        ],
      ),
    );
  }
}
