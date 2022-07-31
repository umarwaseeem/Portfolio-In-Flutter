import 'package:flutter/material.dart';

import 'project_detail.dart';
import 'project_image.dart';

class ProjectSection extends StatelessWidget {
  final Color colorForProjectButton;
  final bool right;

  const ProjectSection(
      {Key? key, required this.colorForProjectButton, required this.right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> detailsAndImage = [
      ProjectDetail(buttonColor: colorForProjectButton),
      const ProjectImage(),
    ];

    List<Widget> giveDetailAndImage(bool right) {
      if (right) {
        return detailsAndImage;
      } else {
        return detailsAndImage.reversed.toList();
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: 120, right: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: giveDetailAndImage(right),
      ),
    );
  }
}
