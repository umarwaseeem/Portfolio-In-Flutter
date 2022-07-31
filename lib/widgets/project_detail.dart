import 'package:flutter/material.dart';

class ProjectDetail extends StatefulWidget {
  final Color buttonColor;

  const ProjectDetail({
    Key? key,
    required this.buttonColor,
  }) : super(key: key);

  @override
  State<ProjectDetail> createState() => _ProjectDetailState();
}

class _ProjectDetailState extends State<ProjectDetail> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.02);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    var projectButton = MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        transform: transform,
        duration: const Duration(milliseconds: 50),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: widget.buttonColor,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 2,
          ),
          onPressed: () {},
          child: Row(
            children: const [
              Text(
                "View Project On Github",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Plain",
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 21),
              Icon(Icons.arrow_forward, color: Colors.black),
            ],
          ),
        ),
      ),
    );
    /////////////////////////////////
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 590,
          child: Text(
            "Project Name",
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 32),
        const SizedBox(
          width: 468,
          child: Text(
            "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos habitant morbi tristique senectus himenaeos. ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 70),
        projectButton
      ],
    );
  }
}
