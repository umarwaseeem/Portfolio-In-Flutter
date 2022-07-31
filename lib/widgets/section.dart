import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 224, vertical: 104),
      child: Row(
        children: const [
          Flexible(
            child: Text("Vestibulum felis ex, posuere bibendum purus viverra",
                maxLines: 4,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
    );
  }
}
