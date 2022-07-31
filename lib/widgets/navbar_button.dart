import 'package:flutter/material.dart';

class NavBarButton extends StatefulWidget {
  final String title;
  final Function onPressed;

  const NavBarButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  bool isHovered = false;
  final Gradient _gradient = const LinearGradient(
    colors: [
      Color.fromRGBO(204, 255, 0, 1),
      Color.fromRGBO(255, 168, 0, 1),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  final Gradient _gradientRemain = const LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 255, 255),
      Color.fromARGB(255, 255, 255, 255),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      ..scale(1.2)
      ..translate(4, -4, 0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => entered(true),
      onExit: (event) => entered(false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        // curve: Sprung.overDamped,
        transform: transform,
        duration: const Duration(milliseconds: 50),
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => isHovered
              ? _gradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                )
              : _gradientRemain.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: "Plain",
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  void entered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
