import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:mp3player/core/theme/app_pallete.dart';
import 'package:mp3player/core/theme/font_text.dart';

class AuthGradientButton extends StatefulWidget {
  final String text;
  const AuthGradientButton({super.key, required this.text});

  @override
  State<AuthGradientButton> createState() => _AuthGradientButtonState();
}

class _AuthGradientButtonState extends State<AuthGradientButton> {
  Color color1 = Pallete.gradient2;
  Color color2 = Pallete.gradient1;
  Color color3 = Pallete.redColor;
  Color color4 = Pallete.transparentColor;
  Color color5 = Pallete.transparentColor;
  Color color6 = Pallete.transparentColor;
  Color color7 = Pallete.transparentColor;
  Color color8 = Pallete.transparentColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
        borderSize: 2,
        glowSize: 10,
        gradientColors: [
          color4,
          color5,
          color6,
          color7,
          color8,
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onHover: (val) {
              if (val) {
                setState(() {
                  color1 = Pallete.gradient3;
                  color2 = Pallete.gradient2;
                  color4 = Pallete.redColor;
                  color5 = Pallete.yellowColor;
                  color6 = Pallete.greenColor;
                  color7 = Pallete.blueColor;
                  color8 = Pallete.purpleColor;
                });
              } else {
                setState(() {
                  color1 = Pallete.gradient2;
                  color2 = Pallete.gradient1;
                  color4 = Pallete.transparentColor;
                  color5 = Pallete.transparentColor;
                  color6 = Pallete.transparentColor;
                  color7 = Pallete.transparentColor;
                  color8 = Pallete.transparentColor;
                });
              }
            },
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(150, 55),
              backgroundColor: Pallete.transparentColor,
              shadowColor: Pallete.transparentColor,
            ),
            child: Text(
              widget.text,
              style: TextFont.subTextFont,
            ),
          ),
        ));
  }
}
