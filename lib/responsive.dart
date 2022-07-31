import 'package:flutter/material.dart';

import 'platform widgets/desktop.dart';
import 'platform widgets/mobile.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return const Desktop();
          } else if (constraints.maxWidth > 800) {
            return const Desktop();
          } else {
            return const Mobile();
          }
        },
      ),
    );
  }
}
