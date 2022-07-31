import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../widgets/appbar.dart';
import '../widgets/main_text.dart';

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
              margin:
                  const EdgeInsets.symmetric(horizontal: 224, vertical: 104),
              child: Row(
                children: const [
                  Flexible(
                    child: Text(
                        "Vestibulum felis ex, posuere bibendum purus viverra",
                        maxLines: 4,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 24),
                  Flexible(
                    child: Text(
                      maxLines: 4,
                      "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos habitant morbi tristique senectus himenaeos. ",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
