import 'package:flutter/material.dart';
import 'package:mp3player/core/theme/app_pallete.dart';
import 'package:mp3player/core/theme/font_text.dart';
import 'package:mp3player/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:mp3player/features/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
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
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: const LinearGradient(
                      colors: [
                        Pallete.gradient1,
                        Pallete.gradient2,
                        Pallete.gradient3,
                      ],
                    ),
                  ),
                  child: Image.network(
                    "https://media.tenor.com/30gc8sURJx4AAAAi/minecraft-allay.gif",
                    width: 180,
                    height: 180,
                  ),
                ),
                Text('Sign Up.', style: TextFont.textFont),
                const SizedBox(height: 20),
                CustomField(
                  hintText: 'Name',
                  controll: nameController,
                ),
                const SizedBox(height: 16),
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
                const AuthGradientButton(text: 'Sign Up'),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(
                  text: 'Already have an account? ',
                  style: Theme.of(context).textTheme.titleMedium,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const TextSpan(
                      text: 'Sign In',
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
