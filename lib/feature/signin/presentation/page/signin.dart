import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/step_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'forgotpage.dart';
import 'homepage.dart';

class Signin extends StatelessWidget {
  Signin({super.key});

  // GetX reactive password visibility
  final RxBool isPasswordHidden = true.obs;

  // Text controllers
  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120.h),

              Headertext(
                title: 'Sign in to\nyour account',
                subtitle:
                    'Welcome back! Please enter your account',
              ),

              SizedBox(height: 32.h),

              Text(
                'Your email',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 14.h),

              Xfield(
                controller: emailController,
                text: 'Thomas Anree',
                prefixIcons: const Icon(
                  Icons.email_sharp,
                ),
              ),

              SizedBox(height: 16.h),

              Text(
                'Password',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 14.h),

              Obx(
                () => Xfield(
                  controller: passwordController,
                  text: 'Enter password',
                  prefixIcons: const Icon(
                    Icons.lock,
                  ),
                  obscureText:
                      isPasswordHidden.value,

                  suffixIcons: IconButton(
                    onPressed: () {
                      isPasswordHidden.toggle();
                    },
                    icon: Icon(
                      isPasswordHidden.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16.h),

              // Forgot Password
              InkWell(
                onTap: () {
                  Get.to(
                    () => Forgotpage(),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                ),
              ),

              SizedBox(height: 32.h),

              // Sign In
              Primarybutten(
                title: 'Sign In',
                size: 16.sp,
                bold: FontWeight.bold,
                onpress: () {
                  Get.to(
                    () => const HomePage(),
                  );
                },
              ),

              SizedBox(height: 32.h),

              // Sign Up
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
                  ),

                  InkWell(
                    onTap: () {
                      Get.to(
                        () => Step3(),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
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
