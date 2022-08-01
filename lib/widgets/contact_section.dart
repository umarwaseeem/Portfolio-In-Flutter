import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/contact_field.dart';

import '../colors/colors.dart';
import 'icon_circle.dart';
import 'submit_button.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    const Gradient gradient = LinearGradient(
      colors: [
        Color.fromRGBO(204, 255, 0, 1),
        Color.fromRGBO(255, 168, 0, 1),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    const Gradient gradientRemain = LinearGradient(
      colors: [
        Color.fromRGBO(255, 255, 255, 1),
        Color.fromRGBO(255, 255, 255, 1),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final hoveredTransform = Matrix4.identity()
      ..scale(1.05)
      ..translate(-1, -1, 4);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return Container(
      margin: const EdgeInsets.only(left: 200, right: 200, bottom: 128),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Require my skills?",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => gradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: const Text(
                  "Contact Me",
                  style: TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 56),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 16),
                  Text(
                    "umar.waseem@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: const [
                  Icon(Icons.phone, color: Colors.white),
                  SizedBox(width: 16),
                  Text(
                    "+92 123 456 8888",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                children: const [
                  IconCircle(),
                  SizedBox(width: 24),
                  IconCircle(),
                  SizedBox(width: 24),
                  IconCircle(),
                ],
              ),
            ],
          ),
          const SizedBox(width: 210),
          Expanded(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: aboutCardColor,
              child: Container(
                margin: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    const ContactField(
                        label: "Name",
                        lines: 1,
                        keyboardType: TextInputType.text),
                    const SizedBox(height: 25),
                    const ContactField(
                        label: "Email Address",
                        lines: 1,
                        keyboardType: TextInputType.emailAddress),
                    const SizedBox(height: 25),
                    const ContactField(
                        label: "Write away your message",
                        lines: 4,
                        keyboardType: TextInputType.multiline),
                    const SizedBox(height: 42),
                    SizedBox(
                      width: 175,
                      height: 48,
                      child: MouseRegion(
                        onEnter: (event) => entered(true),
                        onExit: (event) => entered(false),
                        cursor: SystemMouseCursors.click,
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                            gradient: isHovered ? gradient : gradientRemain,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          transform: transform,
                          duration: const Duration(milliseconds: 50),
                          child: SubmitButton(
                            isHovered: isHovered,
                            text: "Send Your Message",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void entered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
