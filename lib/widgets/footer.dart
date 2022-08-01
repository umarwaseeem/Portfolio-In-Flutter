import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "© 2022 Umer Waseem. All rights reserved.",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
