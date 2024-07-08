import 'package:flutter/material.dart';
import 'package:mp3player/core/theme/app_pallete.dart';
import 'package:mp3player/core/theme/font_text.dart';
import 'package:mp3player/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:mp3player/features/auth/view/widgets/custom_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.transparentColor,
        shadowColor: Pallete.transparentColor,
        scrolledUnderElevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://media.tenor.com/GrJ_b00HCz0AAAAi/listen-now-listen.gif",
                  width: 180,
                  height: 180,
                ),
                Text('Sign In.', style: TextFont.textFont),
                const SizedBox(height: 20),
                CustomField(
                  hintText: 'Email',
                  controll: emailController,
                ),
                const SizedBox(height: 16),
                CustomField(
                  hintText: 'Password',
                  controll: passwordController,
                ),
                const SizedBox(height: 16),
                const AuthGradientButton(text: 'Sign In'),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: Theme.of(context).textTheme.titleMedium,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(color: Pallete.gradient2),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
