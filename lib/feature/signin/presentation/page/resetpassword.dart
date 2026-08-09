import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Resetpassword extends StatelessWidget {
  Resetpassword({super.key});

  final RxBool isNewPasswordHidden = true.obs;
  final RxBool isConfirmPasswordHidden = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Headertext(
            title: 'Reset Password',
            subtitle: 'Enter a new password',
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),

                const Texts(
                  text: 'New Password',
                ),

                const SizedBox(height: 10),

                Obx(
                  () => Xfield(
                    text: 'Enter password',
                    obscureText: isNewPasswordHidden.value,
                    suffixIcons: IconButton(
                      onPressed: () {
                        isNewPasswordHidden.toggle();
                      },
                      icon: Icon(
                        isNewPasswordHidden.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    prefixIcons: const Icon(
                      Icons.lock_outline_sharp,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Texts(
                  text: 'Confirm Password',
                ),

                const SizedBox(height: 10),

                Obx(
                  () => Xfield(
                    text: 'Confirm password',
                    obscureText:
                        isConfirmPasswordHidden.value,
                    suffixIcons: IconButton(
                      onPressed: () {
                        isConfirmPasswordHidden.toggle();
                      },
                      icon: Icon(
                        isConfirmPasswordHidden.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    prefixIcons: const Icon(
                      Icons.lock_outline_sharp,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Primarybutten(
                  title: 'Reset Password',
                  onpress: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 423.h,
                          width: 440.w,

                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  width: 50.w,
                                  height: 5.h,
                                  margin:
                                      const EdgeInsets.only(
                                    bottom: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.circular(10),
                                  ),
                                ),

                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  decoration:
                                      const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),

                                const SizedBox(height: 20),

                                const Column(
                                  children: [
                                    Texts(
                                      text: 'Password Changed!',
                                    ),

                                    SizedBox(height: 20),

                                    Text(
                                      'Return To the login page to enter your\n'
                                      'account with your new password',
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 25),

                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Primarybutten(
                                    title: 'back to sign in',
                                    onpress: () {
                                      Get.offAll(
                                        () => Signin(),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}