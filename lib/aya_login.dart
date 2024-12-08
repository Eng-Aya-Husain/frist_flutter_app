import 'package:aya_frist_hw/sheard/aya_button.dart';
import 'package:aya_frist_hw/sheard/aya_textStyle.dart';
import 'package:aya_frist_hw/sheard/aya_textbox.dart';
import 'package:aya_frist_hw/sheard/colors.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back!',
                style: AppTextStyles.headline,
              ),
              const SizedBox(height: 10),
              Text(
                'Login to your account',
                style: AppTextStyles.subtitle,
              ),
              const SizedBox(height: 30),
              CustomTextField(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: 'Password',
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Login',
                onPressed: () {
                  // Handle login logic here
                  print('Email: ${emailController.text}');
                  print('Password: ${passwordController.text}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
