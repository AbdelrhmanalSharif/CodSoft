import 'package:flutter/material.dart';
import 'package:mp3player/core/theme/app_pallete.dart';
import 'package:mp3player/core/theme/font_text.dart';

class AuthGradientButton extends StatefulWidget {
  final String text;
  const AuthGradientButton({super.key, required this.text});

  @override
  State<AuthGradientButton> createState() => _AuthGradientButtonState();
}

class _AuthGradientButtonState extends State<AuthGradientButton> {
  @override
  Widget build(BuildContext context) {
    Color color1 = Pallete.gradient2;
    Color color2 = Pallete.gradient1;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          end: Alignment.topRight,
          begin: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
          onPressed: () {
            setState(() {
              final tempColor = color1;
              color1 = color2;
              color2 = tempColor;
            });
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: Pallete.transparentColor,
            shadowColor: Pallete.transparentColor,
          ),
          child: Text(
            widget.text,
            style: TextFont.subTextFont,
          )),
    );
  }
}
