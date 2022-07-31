import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../widgets/appbar.dart';
import '../widgets/main_text.dart';
import '../widgets/project_section.dart';
import '../widgets/section.dart';
import '../widgets/technologies.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: backgroundBlack,
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const AppBarWidget(),
                  const MainText(),
                  Image.asset("assets/images/iphoneHalf.png"),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const Section(),
                  ProjectSection(
                      colorForProjectButton: button1Color, right: true),
                  ProjectSection(
                      colorForProjectButton: button2Color, right: false),
                  ProjectSection(
                      colorForProjectButton: button3Color, right: true),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: backgroundBlack,
              child: const Technologies(),
            ),
          ],
        ),
      ),
    );
  }
}
