import 'package:doctor/colour/colour.dart';
import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/feature/signin/presentation/page/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class Verifyemail extends StatelessWidget {
  const Verifyemail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Headertext(
            title: 'Verify Email',
            subtitle:
                'Please check your email and enter the code',
          ),

          const SizedBox(height: 30),

          SizedBox(
            child: Pinput(
              length: 6,
              showCursor: true,

              defaultPinTheme: PinTheme(
                width: 50,
                height: 40,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColor.buttonColor,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          const Texts(
            text: '2.32',
            color: Colors.blue,
          ),

          const SizedBox(height: 20),

          Primarybutten(
            title: 'Continue',
            onpress: () {
              Get.to(
                () => Resetpassword(),
              );
            },
          ),

          const SizedBox(height: 40),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [
              const Texts(
                text: 'Didnt receive code?',
              ),

              const SizedBox(width: 7),

              InkWell(
                onTap: () {
                  // Resend OTP logic এখানে পরে যোগ করতে পারবে
                },

                child: const Text(
                  'Resend it',
                  style: TextStyle(
                    color: Colors.indigoAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}