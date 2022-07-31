import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/iphone.png");
  }
}
