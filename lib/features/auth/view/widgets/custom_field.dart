import 'package:flutter/material.dart';
import 'package:mp3player/core/theme/app_pallete.dart';

// ignore: must_be_immutable
class CustomField extends StatefulWidget {
  final String hintText;
  final TextEditingController controll;

  const CustomField(
      {super.key, required this.hintText, required this.controll});

  @override
  // ignore: library_private_types_in_public_api
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  bool isPasswordVisible = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextFormField(
        controller: widget.controll,
        onTap: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          helperText: isPressed ? getHelperText() : null,
          helperStyle: const TextStyle(
            fontSize: 18,
            color: Pallete.greenColor,
          ),
          suffixIcon: widget.hintText == 'Password'
              ? IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                )
              : null,
        ),
        validator: (val) {
          if (val!.trim().isEmpty) {
            return 'Please enter your ${widget.hintText}';
          } else if (val.isEmpty) {
            if (widget.hintText == 'Email') {
              if (!val.contains('@')) {
                return 'Please enter a valid email';
              }
            } else if (widget.hintText == 'Password') {
              if (val.length < 8) {
                return 'Password must be at least 8 characters long';
              }
            }
          }
          return null;
        },
        obscureText: widget.hintText == 'Password' && !isPasswordVisible,
      ),
    );
  }

  String? getHelperText() {
    if (widget.hintText == 'Email') {
      return '@gmail.com';
    } else if (widget.hintText == 'Password') {
      return 'More than 8 characters with symbols';
    }
    return null;
  }
}
