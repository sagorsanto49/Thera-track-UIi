import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/verifyemail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forgotpage extends StatelessWidget {
  Forgotpage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 228,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headertext(
              title: 'Forgot Password',
              subtitle:
                  'Please enter your email address to reset password.',
            ),

            Texts(
              text: 'Your Email',
            ),

            const SizedBox(height: 20),

            Xfield(
              controller: emailController,
              text: 'Enter Email',
              prefixIcons: const Icon(
                Icons.attach_email_rounded,
              ),
            ),

            const SizedBox(height: 32),

            Primarybutten(
              title: 'Send OTP',
              size: 18,
              bold: FontWeight.bold,
              onpress: () {
                Get.to(() => const Verifyemail());
              },
            ),
          ],
        ),
      ),
    );
  }
}
