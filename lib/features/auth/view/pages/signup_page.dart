import 'package:flutter/material.dart';
import 'package:mp3player/core/theme/font_text.dart';
import 'package:mp3player/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:mp3player/features/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign Up.', style: TextFont.textFont),
            const SizedBox(height: 25),
            const CustomField(
              hintText: 'Name',
            ),
            const SizedBox(height: 20),
            const CustomField(
              hintText: 'Email',
            ),
            const SizedBox(height: 20),
            const CustomField(
              hintText: 'Password',
            ),
            const SizedBox(height: 25),
            const AuthGradientButton(text: 'Sign Up'),
          ],
        ),
      ),
    );
  }
}
