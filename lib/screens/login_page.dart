import 'package:calendar_app/services/auth/auth_service.dart';
import 'package:calendar_app/widgets/primary_button.dart';
import 'package:calendar_app/widgets/primary_text.dart';
import 'package:calendar_app/widgets/primary_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login() async {
    final _authService = AuthService();
    try {
      await _authService.signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: PrimaryText(
            text: e.toString(),
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      );
    }
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => HomePage(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.dinner_dining_rounded,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryText(
                text: 'Calendar App',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryTextField(
                obsecureText: false,
                controller: emailController,
                hintText: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryTextField(
                obsecureText: true,
                controller: passwordController,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryButton(
                onTap: login,
                child: PrimaryText(
                  text: 'Sign In',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryText(
                    text: 'Not a Member?',
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: PrimaryText(
                      text: 'Register Now',
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
