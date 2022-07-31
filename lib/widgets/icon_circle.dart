import 'package:flutter/material.dart';

import '../colors/colors.dart';

class IconCircle extends StatelessWidget {
  const IconCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(color: circleAvatarColor, width: 32, height: 32),
    );
  }
}
