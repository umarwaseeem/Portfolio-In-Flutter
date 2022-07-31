import 'package:flutter/material.dart';

import 'icon_circle.dart';
import 'navbar_button.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              IconCircle(),
              SizedBox(width: 24),
              IconCircle(),
              SizedBox(width: 24),
              IconCircle(),
            ],
          ),
          Row(
            children: [
              NavBarButton(title: "Home", onPressed: () {}),
              const SizedBox(width: 76),
              NavBarButton(title: "Projects", onPressed: () {}),
              const SizedBox(width: 76),
              NavBarButton(title: "Contact", onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
